import 'package:flutter/material.dart';
import 'package:noti/providers/holiday_provider/holidays_provider.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../providers/settings_provider/settings_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/internationalization/app_localizations.dart';

class DateCalendar extends StatelessWidget {
  const DateCalendar({
    required this.focDay,
    required this.onMonthChange,
    required this.startingDayOfWeek,
    required this.selDay,
    this.rangeStartDay,
    this.rangeEndDay,
    required this.onDaySelected,
    this.onDayLongPressed,
    required this.calendarFormat,
    required this.onFormatChanged,
    required this.events,
    super.key,
    required this.markerColor,
  });

  final DateTime focDay;
  final DateTime selDay;
  final DateTime? rangeStartDay;
  final DateTime? rangeEndDay;
  final StartingDayOfWeek startingDayOfWeek;
  final Function(DateTime, DateTime)? onDaySelected;
  final Function(DateTime, DateTime)? onDayLongPressed;
  final Function(DateTime) onMonthChange;
  final CalendarFormat calendarFormat;
  final Function(CalendarFormat)? onFormatChanged;
  final List<DateTime> Function(DateTime) events;
  final Color? markerColor;

  @override
  Widget build(BuildContext context) {
    var rowHeight = SizeInfo.rowHeight;
    var calendarFontSize = SizeInfo.calendarDaySize;
    var cellMargin = SizeInfo.calendarCellMargin;
    return Consumer2<SettingsProvider, HolidaysProvider>(
      builder: (context, settingsProvider, holidaysProvider, child) {
        final theme = Theme.of(context);

        String? holidayNameFor(DateTime date) {
          final holidays = holidaysProvider.getHolidaysForDay(date);
          if (holidays.isEmpty) return null;
          return AppLocalizations.of(
            context,
          )!.localizedValue(holidays.first.name, fallback: holidays.first.id);
        }

        Widget dayWithHoliday(
          DateTime date,
          TextStyle dayStyle, {
          Color? holidayColor,
        }) {
          final holidayName = holidayNameFor(date);
          if (holidayName == null) {
            return Center(child: Text('${date.day}', style: dayStyle));
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text('${date.day}', style: dayStyle)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  holidayName,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    fontSize: SizeInfo.helpTextSize,
                    color: holidayColor ?? dayStyle.color,
                  ),
                ),
              ),
            ],
          );
        }

        TextStyle rangeDayStyle(DateTime date) =>
            (date.weekday != 6 && date.weekday != 7
                    ? theme.textTheme.bodyMedium!
                    : theme.textTheme.labelMedium!)
                .copyWith(
                  fontSize: calendarFontSize,
                  color: holidaysProvider.hasHoliday(date)
                      ? theme.colorScheme.secondaryFixed
                      : null,
                );

        Widget rangeCell(DateTime date, {BorderRadius? borderRadius}) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: theme.focusColor.withValues(alpha: 0.5),
            ),
            child: dayWithHoliday(
              date,
              rangeDayStyle(date),
              holidayColor: theme.colorScheme.secondaryFixed,
            ),
          );
        }

        bool isWithinRange(DateTime date) {
          if (rangeStartDay == null || rangeEndDay == null) return false;
          return date.isAfter(DateUtils.dateOnly(rangeStartDay!)) &&
              date.isBefore(DateUtils.dateOnly(rangeEndDay!));
        }

        return AnimationLimiter(
          child: TableCalendar<DateTime>(
            focusedDay: focDay,
            availableGestures: AvailableGestures.all,
            firstDay: calendarMinDate,
            lastDay: calendarMaxDate,
            rangeStartDay: rangeStartDay,
            rangeEndDay: rangeEndDay,
            calendarFormat: calendarFormat,
            onFormatChanged: onFormatChanged,
            onDayLongPressed: onDayLongPressed ?? (date, dateTime) {},
            rowHeight: rowHeight,
            daysOfWeekHeight: rowHeight,
            headerVisible: false,
            startingDayOfWeek:
                settingsProvider.calendarStartDay ?? StartingDayOfWeek.monday,
            daysOfWeekVisible: true,
            holidayPredicate: holidaysProvider.hasHoliday,
            onPageChanged: (day) {
              onMonthChange(day);
              if (holidaysProvider.selectedYear != day.year) {
                holidaysProvider.reloadForYear(day.year);
              }
            },
            onDaySelected: onDaySelected,
            selectedDayPredicate: (day) => isSameDay(selDay, day),
            eventLoader: events,
            calendarBuilders: CalendarBuilders(
              selectedBuilder: (context, date, _) {
                if (!holidaysProvider.hasHoliday(date)) return null;
                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: cellMargin / 5,
                    vertical: cellMargin / 5,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryFixed,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: theme.colorScheme.secondaryFixed,
                      width: 0.5,
                    ),
                  ),
                  child: dayWithHoliday(
                    date,
                    theme.textTheme.titleSmall!.copyWith(
                      fontSize: calendarFontSize,
                    ),
                  ),
                );
              },
              todayBuilder: (context, date, _) {
                if (!holidaysProvider.hasHoliday(date)) return null;
                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: cellMargin / 5,
                    vertical: cellMargin / 5,
                  ),
                  decoration: BoxDecoration(
                    color: theme.focusColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: theme.colorScheme.outline,
                      width: 0.2,
                    ),
                  ),
                  child: dayWithHoliday(
                    date,
                    theme.textTheme.headlineMedium!.copyWith(
                      fontSize: calendarFontSize,
                    ),
                    holidayColor: theme.colorScheme.secondaryFixed,
                  ),
                );
              },
              dowBuilder: (context, date) {
                return AnimationConfiguration.staggeredGrid(
                  columnCount: 7,
                  position: date.day,
                  duration: const Duration(milliseconds: 200),
                  child: ScaleAnimation(
                    scale: 0.8,
                    child: FadeInAnimation(
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!
                              .dateFormat(date, context)
                              .shortWeekday!
                              .capitalizeFirstLetter(),

                          style: (date.weekday != 6 && date.weekday != 7)
                              ? Theme.of(context).textTheme.headlineMedium!
                                    .copyWith(fontSize: calendarFontSize)
                              : Theme.of(
                                  context,
                                ).textTheme.labelMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: calendarFontSize,
                                ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              holidayBuilder: (context, date, _) {
                if (isWithinRange(date)) return rangeCell(date);
                return AnimationConfiguration.staggeredGrid(
                  columnCount: 7,
                  position: date.day,
                  duration: const Duration(milliseconds: 200),
                  child: ScaleAnimation(
                    scale: 0.8,
                    child: FadeInAnimation(
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondaryFixed.withAlpha(20),
                          borderRadius: BorderRadius.circular(4.0),
                          border: Border.all(
                            color: theme.colorScheme.secondaryFixed,
                            width: 0.5,
                          ),
                        ),
                        child: dayWithHoliday(
                          date,
                          theme.textTheme.bodyMedium!.copyWith(
                            fontSize: calendarFontSize,
                            color: theme.colorScheme.secondaryFixed,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              defaultBuilder: (context, date, notes) {
                return AnimationConfiguration.staggeredGrid(
                  columnCount: 7,
                  position: date.day,
                  duration: const Duration(milliseconds: 200),
                  child: ScaleAnimation(
                    scale: 0.8,
                    child: FadeInAnimation(
                      child: Center(
                        child: Text(
                          '${date.day}',
                          style: (date.weekday != 6 && date.weekday != 7)
                              ? Theme.of(context).textTheme.bodyMedium!
                                    .copyWith(fontSize: calendarFontSize)
                              : Theme.of(context).textTheme.labelMedium!
                                    .copyWith(fontSize: calendarFontSize),
                        ),
                      ),
                    ),
                  ),
                );
              },
              markerBuilder: (context, date, notes) {
                return notes.isNotEmpty
                    ? Positioned(
                        right: 5,
                        bottom: 2,
                        child: Icon(
                          Icons.circle,
                          size: 8,
                          color:
                              markerColor ?? Theme.of(context).indicatorColor,
                        ),
                      )
                    : const Positioned(
                        right: 1,
                        bottom: 1,
                        child: SizedBox(width: 5, height: 5),
                      );
              },
              rangeStartBuilder: (context, date, end) {
                return rangeCell(
                  date,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                  ),
                );
              },
              rangeEndBuilder: (context, date, end) {
                return rangeCell(
                  date,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(5),
                  ),
                );
              },
              withinRangeBuilder: (context, date, end) {
                return rangeCell(date);
              },
              rangeHighlightBuilder: (context, date, end) {
                return Center(
                  child: Text(
                    '${date.day}',
                    style: (date.weekday != 6 && date.weekday != 7)
                        ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: calendarFontSize,
                          )
                        : Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontSize: calendarFontSize,
                          ),
                  ),
                );
              },
            ),
            calendarStyle: CalendarStyle(
              cellMargin: EdgeInsets.symmetric(
                horizontal: cellMargin / 5,
                vertical: cellMargin / 5,
              ),
              isTodayHighlighted: true,
              defaultTextStyle: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontSize: calendarFontSize),
              weekendTextStyle: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontSize: calendarFontSize),
              selectedTextStyle: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(fontSize: calendarFontSize),
              todayTextStyle: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(fontSize: calendarFontSize),
              outsideTextStyle: Theme.of(
                context,
              ).textTheme.labelSmall!.copyWith(fontSize: calendarFontSize),
              todayDecoration: BoxDecoration(
                color: Theme.of(context).focusColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                  width: 0.2,
                ),
              ),
              selectedDecoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                  width: 0.5,
                ),
              ),
              defaultDecoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              weekendDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              outsideDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(fontSize: calendarFontSize),
              weekendStyle: Theme.of(
                context,
              ).textTheme.labelMedium!.copyWith(fontSize: calendarFontSize),
            ),
          ),
        );
      },
    );
  }
}
