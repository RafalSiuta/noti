import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import '../../models/db_model/task.dart';
import '../../utils/constans/durations.dart';
import '../../utils/dimensions/size_info.dart';

class Calendar extends StatelessWidget {
  final bool isHeaderVisible;
  final bool gesturesEnable;
  final double topSpacing;
  final DateTime focDay;
  final DateTime selDay;
  final StartingDayOfWeek startingDayOfWeek;
  final Function(DateTime, DateTime)? onDaySelected;
  final Function(DateTime, DateTime)? onDayLongPressed;
  final Function(DateTime) onMonthChange;
  final CalendarFormat calendarFormat;
  final Function(CalendarFormat)? onFormatChanged;
  final List<Task> Function(DateTime)? taskEvents;
  const Calendar({required this.focDay,
    required this.onMonthChange,
    required this.startingDayOfWeek,
    required this.selDay,
    required this.onDaySelected,
    this.onDayLongPressed,
    required this.calendarFormat,
    required this.onFormatChanged,
    required this.taskEvents,super.key, this.isHeaderVisible = true,this.gesturesEnable = true, this.topSpacing = 3.0});

  @override
  Widget build(BuildContext context) {
    var rowHeight = SizeInfo.rowHeight;
    var calendarFontSize = SizeInfo.calendarDaySize;
    var headerFontSize = SizeInfo.headerSubtitleSize;
    var calendarButtonFontSize = SizeInfo.taskCardTitle;
    var chevronIconSize = SizeInfo.switchButtonIconSize;
    var markerRadius = SizeInfo.calendarMarkerSize;
    var markerFontSize = SizeInfo.calendarMarkerFontSize;
    var cellMargin = SizeInfo.calendarCellMargin;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Padding(
          padding:  EdgeInsets.only(top: topSpacing,left: 3.0,right: 3.0,bottom: 3.0),
          child: AnimationLimiter(
            child: TableCalendar<Task>(

              focusedDay: focDay,
              availableGestures: gesturesEnable
                  ? AvailableGestures.all
                  : AvailableGestures.none,
              firstDay: calendarMinDate,
              lastDay: calendarMaxDate,
              calendarFormat: calendarFormat,

              onFormatChanged: onFormatChanged,
              onDayLongPressed: onDayLongPressed ?? (date,dateTime){},
              //     (DateTime date, dateTime) async {
              //   await Navigator.push(
              //       context,
              //       CustomPageRoute(
              //           child: TaskCreator(
              //               editEnable: true,
              //               newTask: Task(
              //                   date: DateTime(
              //                       date.year, date.month, date.day,DateTime.now().hour,DateTime.now().minute),
              //                   icon: 1,
              //                   description: " ",
              //                   title: " ",
              //                   priority: 1,
              //                   isTaskDone: false)),
              //           direction: AxisDirection.right));
              // },
              rowHeight: rowHeight,
              daysOfWeekHeight: rowHeight,
              headerVisible: isHeaderVisible,
              startingDayOfWeek:startingDayOfWeek,
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
                              '${DateFormat('MMM yy').format(date)} ',
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
                      right: 1,
                      bottom: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Theme.of(context).indicatorColor,
                            borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        width: markerRadius,
                        height: markerRadius,
                        child: Center(
                          child: Text('${notes.length}',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(fontSize: markerFontSize,color: Theme.of(context).colorScheme.primary,)),
                        ),
                      ))
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
        ),
      ),
    );
  }
}
