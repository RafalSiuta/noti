import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import '../../providers/settings_provider.dart';
import '../../utils/constans/durations.dart';
import '../../utils/dimensions/size_info.dart';

class DateCalendar extends StatelessWidget {

  final DateTime focDay;
  final DateTime selDay;
  final StartingDayOfWeek startingDayOfWeek;
  final Function(DateTime, DateTime)? onDaySelected;
  final Function(DateTime, DateTime)? onDayLongPressed;
  final Function(DateTime) onMonthChange;
  final CalendarFormat calendarFormat;
  final Function(CalendarFormat)? onFormatChanged;
  final List<DateTime> Function(DateTime)  events;
  final Color? markerColor;
  const DateCalendar({required this.focDay,
    required this.onMonthChange,
    required this.startingDayOfWeek,
    required this.selDay,
    required this.onDaySelected,
    this.onDayLongPressed,
    required this.calendarFormat,
    required this.onFormatChanged,
    required this.events,super.key,
    required this.markerColor,
  });

  @override
  Widget build(BuildContext context) {
    var rowHeight = SizeInfo.rowHeight;
    var calendarFontSize = SizeInfo.calendarDaySize;
    var cellMargin = SizeInfo.calendarCellMargin;
    return Consumer<SettingsProvider>(builder: (context,settingsProvider,child){
      return AnimationLimiter(
        child: TableCalendar<DateTime>(
          focusedDay: focDay,
          availableGestures: AvailableGestures.all,
          firstDay: calendarMinDate,
          lastDay: calendarMaxDate,
          calendarFormat: calendarFormat,
          onFormatChanged: onFormatChanged,
          onDayLongPressed: onDayLongPressed ?? (date,dateTime){},
          rowHeight: rowHeight,
          daysOfWeekHeight: rowHeight,
          headerVisible: false,
          startingDayOfWeek:settingsProvider.calendarStartDay ?? StartingDayOfWeek.monday,
          daysOfWeekVisible: true,
          onPageChanged: (day) => onMonthChange(day),//dodaj do konstruktora
          onDaySelected: onDaySelected,
          selectedDayPredicate: (day) =>
              isSameDay(selDay, day),
          eventLoader: events,
          calendarBuilders: CalendarBuilders(
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
                            '${DateFormat('E').format(date)} ',
                            style: (date.weekday != 6 && date.weekday != 7)
                                ? Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                              fontSize: calendarFontSize,)
                                : Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: calendarFontSize,),
                          ))),
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
                                ? Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                fontSize: calendarFontSize )
                                : Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                fontSize: calendarFontSize),
                          ))),
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
                    color: markerColor ?? Theme.of(context).indicatorColor,
                  )
              )
                  : const Positioned(
                right: 1,
                bottom: 1,
                child: SizedBox(
                  width: 5,
                  height: 5,
                ),
              );
            },
          ),
          calendarStyle: CalendarStyle(
            cellMargin: EdgeInsets.symmetric(
                horizontal: cellMargin, vertical: cellMargin / 5),
            isTodayHighlighted: true,
            defaultTextStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(
              fontSize: calendarFontSize,),
            weekendTextStyle: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(
              fontSize: calendarFontSize,),
            selectedTextStyle: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(
              fontSize: calendarFontSize,
            ),
            todayTextStyle: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(
              fontSize: calendarFontSize,
            ),
            outsideTextStyle: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: calendarFontSize),
            todayDecoration: BoxDecoration(
                color: Theme.of(context).focusColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Theme.of(context).colorScheme.outline, width: 0.2)
            ),
            selectedDecoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Theme.of(context).colorScheme.outline, width: 0.5)
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
            weekdayStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(
              fontSize: calendarFontSize,
            ),
            weekendStyle: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(
              fontSize: calendarFontSize,
            ),
          ),
        ),
      );
    });


  }
}
