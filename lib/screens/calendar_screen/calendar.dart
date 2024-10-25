import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import '../../models/db_model/task.dart';
import '../../providers/task_provider.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../task_screen/task_creator_screen.dart';


//todo convert this to separate widget 
class Calendar extends StatelessWidget {
  final bool isHeaderVisible;
  final double topSpacing;
  const Calendar({super.key, this.isHeaderVisible = true, this.topSpacing = 3.0});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
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
                  focusedDay: taskProvider.focDay,
                  availableGestures: isHeaderVisible
                      ? AvailableGestures.all
                      : AvailableGestures.none,
                  firstDay: DateTime(1990),
                  lastDay: DateTime(DateTime.now().year + 2),
                  calendarFormat: isHeaderVisible
                      ? taskProvider.format
                      : CalendarFormat.week,
                  onFormatChanged: (CalendarFormat _format) {
                    taskProvider.changeDateFormat(_format);
                  },
                  onDayLongPressed: (DateTime date, list) async {
                    await Navigator.push(
                        context,
                        CustomPageRoute(
                            child: TaskCreator(
                                editEnable: true,
                                newTask: Task(
                                    date: DateTime(
                                        date.year, date.month, date.day,DateTime.now().hour,DateTime.now().minute),
                                    icon: 1,
                                    description: " ",
                                    title: " ",
                                    priority: 1,
                                    isTaskDone: false)),
                            direction: AxisDirection.right));
                  },
                  rowHeight: rowHeight,
                  daysOfWeekHeight: rowHeight,
                  headerVisible: isHeaderVisible,
                  startingDayOfWeek:
                  taskProvider.settings.calendarStartDay ?? StartingDayOfWeek.monday,
                  daysOfWeekVisible: true,
                  onPageChanged: (day) => taskProvider.onMonthChange(day),
                  onDaySelected: taskProvider.onDaySelected,
                  selectedDayPredicate: (day) =>
                      isSameDay(taskProvider.selDay, day),
                  eventLoader: taskProvider.getCalendarValues,
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
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5.0),
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
      },
    );
  }
}
