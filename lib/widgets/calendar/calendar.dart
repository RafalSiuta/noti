import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:noti/providers/settings_provider/settings_provider.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import '../../models/date/date_model.dart';
import '../../models/db_model/task.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/internationalization/app_localizations.dart';
import '../buttons/calendar_format_button.dart';
import 'calendar_header.dart';
import 'calendar_marker.dart';

class Calendar extends StatelessWidget {
  const Calendar({required this.focDay,
    required this.onMonthChange,
   // required this.startingDayOfWeek,
    required this.selDay,
    required this.onDaySelected,
    this.onDayLongPressed,
    this.next,
    this.prev,
    required this.calendarFormat,
    required this.onFormatChanged,
    required this.taskEvents,super.key, this.isHeaderVisible = true,this.gesturesEnable = true, this.topSpacing = 3.0});

  final bool isHeaderVisible;
  final bool gesturesEnable;
  final double topSpacing;
  final DateTime focDay;
  final DateTime selDay;
 // final StartingDayOfWeek startingDayOfWeek;
  final Function(DateTime, DateTime)? onDaySelected;
  final Function(DateTime, DateTime)? onDayLongPressed;
  final Function(DateTime) onMonthChange;
  final CalendarFormat calendarFormat;
  final Function(CalendarFormat)? onFormatChanged;
  final List<Task> Function(DateTime)? taskEvents;
  final VoidCallback? next;
  final VoidCallback? prev;


  @override
  Widget build(BuildContext context) {
    var rowHeight = SizeInfo.rowHeight;
    var calendarFontSize = SizeInfo.calendarDaySize;
    var headerFontSize = SizeInfo.headerSubtitleSize;
    var calendarButtonFontSize = SizeInfo.taskCardTitle;
    var chevronIconSize = SizeInfo.switchButtonIconSize;
    var markerRadius = SizeInfo.rowHeight / 3.2;
    var markerFontSize = SizeInfo.calendarMarkerFontSize;
    var cellMargin = SizeInfo.calendarCellMargin;
    return Consumer<SettingsProvider>(
        builder: (context,settingsProvider, child){
          return
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
                child: Padding(
                  padding:  EdgeInsets.only(top: topSpacing + cellMargin,left: 3.0,right: 3.0,bottom: 3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: isHeaderVisible,
                        child:
                        CalendarHeader(
                          next: next ?? () {},
                          previous: prev ?? () {},
                          date: focDay,
                          widget: CalendarFormatButton(
                            format: calendarFormat,
                            textSize: calendarButtonFontSize,
                            onFormatChange: onFormatChanged ?? (format){

                            },
                          ),
                        ),
                      ),
                      AnimationLimiter(
                        child: TableCalendar<Task>(
                          // locale: 'pl_PL',
                          focusedDay: focDay,
                          availableGestures: gesturesEnable
                              ? AvailableGestures.all
                              : AvailableGestures.none,
                          firstDay: calendarMinDate,
                          lastDay: calendarMaxDate,
                          calendarFormat: calendarFormat,

                          onFormatChanged: onFormatChanged,
                          onDayLongPressed: onDayLongPressed ?? (date,dateTime){},

                          rowHeight: rowHeight,
                          daysOfWeekHeight: rowHeight,
                          headerVisible: false,//isHeaderVisible,
                          startingDayOfWeek:settingsProvider.calendarStartDay ?? StartingDayOfWeek.monday ,
                          //startingDayOfWeek:startingDayOfWeek,
                          daysOfWeekVisible: true,
                          onPageChanged: (day) => onMonthChange(day),//dodaj do konstruktora
                          onDaySelected: onDaySelected,
                          selectedDayPredicate: (day) =>
                              isSameDay(selDay, day),
                          eventLoader: (day) => taskEvents?.call(day) ?? [],
                          calendarBuilders: CalendarBuilders(
                            headerTitleBuilder: (context, date) {
                              return Center(
                                  child: PlayAnimationBuilder(
                                    tween: Tween<double>(begin: 0.8, end: 1.0),
                                    duration: const Duration(milliseconds: 300),
                                    delay: const Duration(milliseconds: 200),
                                    curve: Curves.easeOut,
                                    builder:(context, value, child){
                                      return Transform.scale(
                                        scale: value,
                                        child: Text(
                                          AppLocalizations.of(context)!.dateFormat(date, context).monthYear!.capitalizeFirstLetter(),
                                          //'${DateFormat('MMM yy').format(date)} ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(fontSize: headerFontSize),
                                        ),
                                      );
                                    },
                                  )
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
                                            AppLocalizations.of(context)!.dateFormat(date, context).shortWeekday!.capitalizeFirstLetter(),
                                            // '${DateFormat('E').format(date)} ',
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
                                  ?
                              Positioned(
                                //top: 2.5,
                                  right: 0,
                                  bottom: 1,
                                  child: CalendarMarker(
                                    tasks: notes,
                                    markerRadius: markerRadius,
                                    markerFontSize: markerFontSize,
                                  )
                              )
                                  : Container();
                            },
                          ),
                          calendarStyle: CalendarStyle(
                            cellMargin: EdgeInsets.symmetric(
                                horizontal: cellMargin / 5, vertical: cellMargin / 5),
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
                                color: Theme.of(context).colorScheme.onPrimary,
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
                          headerStyle: HeaderStyle(
                            headerPadding: EdgeInsets.all(cellMargin),
                            formatButtonVisible: true,
                            titleCentered: true,
                            formatButtonShowsNext: false,
                            formatButtonDecoration: BoxDecoration(
                              color: Theme.of(context)
                                  .floatingActionButtonTheme
                                  .backgroundColor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            rightChevronIcon: Icon(
                              Icons.arrow_right,
                              color: Theme.of(context).indicatorColor,
                              size: chevronIconSize,
                            ),
                            leftChevronIcon: Icon(
                              Icons.arrow_left,
                              color: Theme.of(context).indicatorColor,
                              size: chevronIconSize,
                            ),
                            titleTextStyle: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(fontSize: headerFontSize),
                            formatButtonTextStyle: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: calendarButtonFontSize,color: Theme.of(context).colorScheme.primary,),
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
                      ),
                    ],
                  ),
                ),
              ),
            );
        });
  }
}
