import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import '../../models/db_model/task.dart';
import '../../providers/settings_provider.dart';
import '../../providers/task_provider.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../task_screen/task_creator_screen.dart';

class Calendar extends StatelessWidget {
  final bool isHeaderVisible;
  const Calendar({Key? key, this.isHeaderVisible = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<TaskProvider, SettingsProvider>(
      builder: (context, taskProvider, settingsProvider, child) {
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
              padding: const EdgeInsets.all(3.0),
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
                                        date.year, date.month, date.day),
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
                      settingsProvider.calendarSets.calendarSettings[0].isOn ==
                              false
                          ? StartingDayOfWeek.monday
                          : StartingDayOfWeek.sunday,
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
                              tween: Tween<double>(begin: 0.2, end: 1.0),
                              duration: const Duration(milliseconds: 300),
                              delay: const Duration(milliseconds: 200),
                              curve: Curves.easeOut,
                          builder:(context, value, child){
                            return Transform.scale(
                              scale: value,
                              child: Text(
                                '${DateFormat('MMMM yy').format(date)} ',
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
                          scale: 0.5,
                          child: FadeInAnimation(
                              child: Center(
                                  child: Text(
                            '${DateFormat('E').format(date)} ',
                            style: (date.weekday != 6 && date.weekday != 7)
                                ? Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                        fontSize: calendarFontSize,
                                        fontWeight: FontWeight.w300)
                                : Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: calendarFontSize,
                                        fontWeight: FontWeight.w300),
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
                          scale: 0.5,
                          child: FadeInAnimation(
                              child: Center(
                                  child: Text(
                            '${date.day}',
                            style: (date.weekday != 6 && date.weekday != 7)
                                ? Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                        fontSize: calendarFontSize,
                                        fontWeight: FontWeight.w500)
                                : Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: calendarFontSize,
                                        fontWeight: FontWeight.w500),
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
                                          .labelMedium!
                                          .copyWith(fontSize: markerFontSize)),
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
                        .headlineMedium!
                        .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w500),
                    weekendTextStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w500),
                    selectedTextStyle: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0),
                    todayTextStyle: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w500),
                    outsideTextStyle: TextStyle(
                        color: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .color!
                            .withOpacity(0.5),
                        fontSize: calendarFontSize,
                        fontWeight: FontWeight.w100,
                        fontFamily:
                            Theme.of(context).textTheme.labelMedium!.fontFamily),
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
                        .headlineMedium!
                        .copyWith(fontSize: calendarButtonFontSize),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w300),
                    weekendStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w300),
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
