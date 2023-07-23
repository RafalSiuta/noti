import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../providers/settings_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/prefs/prefs.dart';


class CalendarWidget extends StatefulWidget {
  const CalendarWidget(this.pickDate,{super.key});
  final Function(DateTime date)? pickDate;

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {

  final Prefs _prefs = Prefs();
  var isHeaderVisible = true;
  var rangeSelectionMode;
  DateTime focDay =
  DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime selDay =
  DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  CalendarFormat format = CalendarFormat.month;


  onMonthChange(DateTime day) {
    setState(() {
      focDay = DateTime(day.year, day.month, 1);
      print("$focDay next month");
    });

  }


  void changeDateFormat(CalendarFormat calendarFormat) {
    setState(() {
      format = calendarFormat;
      _prefs.storeInt("calendarWidgetFormat", format.index);
    });

  }

  void onDaySelected(selectedDay, focusedDay) async {
    setState(() {
      if (!isSameDay(selDay, selectedDay)) {
        selDay = selectedDay;
        focDay = focusedDay;
        rangeSelectionMode = RangeSelectionMode.toggledOff;
        widget.pickDate!(selDay);
      }
    });

  }


  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, settingsProvider, child) {
        var rowHeight = 26.0;
        var calendarFontSize = SizeInfo.calendarDaySize;
        var headerFontSize = 18.0;//SizeInfo.headerSubtitleSize;
        var calendarButtonFontSize = SizeInfo.taskCardTitle;
        var chevronIconSize = SizeInfo.switchButtonIconSize;
        var cellMargin = SizeInfo.calendarCellMargin;

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: TableCalendar<DateTime>(
              focusedDay: focDay,
              availableGestures: isHeaderVisible
                  ? AvailableGestures.all
                  : AvailableGestures.none,
              firstDay: DateTime(1990),
              lastDay: DateTime(DateTime.now().year + 2),

              calendarFormat: format,
              // onFormatChanged: (CalendarFormat _format) {
              //   changeDateFormat(_format);
              // },
              // onDayLongPressed: (DateTime date, list) async {
              //   // await Navigator.push(
              //   //     context,
              //   //     CustomPageRoute(
              //   //         child: TaskCreator(
              //   //             editEnable: true,
              //   //             newTask: Task(
              //   //                 date: DateTime(
              //   //                     date.year, date.month, date.day),
              //   //                 icon: 1,
              //   //                 description: " ",
              //   //                 title: " ",
              //   //                 priority: 1,
              //   //                 isTaskDone: false)),
              //   //         direction: AxisDirection.right));
              // },
              rowHeight: rowHeight,
              daysOfWeekHeight: rowHeight,
              headerVisible: isHeaderVisible,
              startingDayOfWeek:StartingDayOfWeek.monday,
              //TODO: apply settings for start day switch
              // settingsProvider.calendarSets.calendarSettings[0].isOn ==
              //         false
              //     ? StartingDayOfWeek.monday
              //     : StartingDayOfWeek.sunday,
              daysOfWeekVisible: true,
              onPageChanged: (day) => onMonthChange(day),
              onDaySelected: onDaySelected,
              selectedDayPredicate: (day) =>
                  isSameDay(selDay, day),
              //eventLoader: getCalendarValues,
              calendarBuilders: CalendarBuilders(
                headerTitleBuilder: (context, date) {
                  return Center(
                    child: Text(
                      '${DateFormat('MMMM yyyy').format(date)} ',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: headerFontSize),
                    ),
                  );
                },
                dowBuilder: (context, date) {
                  return Center(
                      child: Text(
                        '${DateFormat('E').format(date)} ',
                        style: (date.weekday != 6 && date.weekday != 7)
                            ? Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w300)
                            : Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w300),
                      ));
                },
                defaultBuilder: (context, date, notes) {
                  return Center(
                      child: Text(
                        '${date.day}',
                        style: (date.weekday != 6 && date.weekday != 7)
                            ? Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w500)
                            : Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                            fontSize: calendarFontSize,
                            fontWeight: FontWeight.w500),
                      ));
                },
              ),
              calendarStyle: CalendarStyle(
                cellMargin: EdgeInsets.symmetric(
                    horizontal: cellMargin, vertical: cellMargin / 5),
                isTodayHighlighted: true,
                defaultTextStyle: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(
                    fontSize: calendarFontSize,
                    fontWeight: FontWeight.w500),
                weekendTextStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(
                    fontSize: calendarFontSize,
                    fontWeight: FontWeight.w500),
                selectedTextStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(
                    fontSize: calendarFontSize,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0),
                todayTextStyle: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(
                    fontSize: calendarFontSize,
                    fontWeight: FontWeight.w500),
                outsideTextStyle: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .color!
                        .withOpacity(0.5),
                    fontSize: calendarFontSize,
                    fontWeight: FontWeight.w100,
                    fontFamily:
                    Theme.of(context).textTheme.bodyLarge!.fontFamily),
                todayDecoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                selectedDecoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                defaultDecoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                weekendDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                outsideDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              headerStyle: HeaderStyle(
                headerPadding: EdgeInsets.all(cellMargin),
                formatButtonVisible: false,
                titleCentered: true,
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
                    .displaySmall!
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
                    .bodyLarge!
                    .copyWith(
                    fontSize: calendarFontSize,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        );
      },
    );
  }
}
