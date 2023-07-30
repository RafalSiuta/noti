import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../model/db_models/task.dart';
import '../../screens/calendar_screen/calendar.dart';
import '../calendar/calendar_widget.dart';
import '../displays/calendar_marker.dart';


class CalendarCard extends StatelessWidget {
  const CalendarCard({this.date,super.key});

  final DateTime? date;

  @override
  Widget build(BuildContext context) {

    const calendarFontSize = 8.0;
    return Card(
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(DateFormat('MMM yy').format(date!), style: Theme.of(context).textTheme.bodyMedium,),
              TableCalendar<Task>(
                sixWeekMonthsEnforced: false,
                focusedDay: date!,
                availableGestures: AvailableGestures.none,
                firstDay: DateTime(1990),
                lastDay: DateTime(DateTime.now().year + 2),
                //eventLoader: ,
                calendarFormat: CalendarFormat.month,
                // onFormatChanged: (CalendarFormat _format) {
                //   calendarProvider.changeDateFormat(_format);
                // },
                onDayLongPressed: (DateTime date, list) async {
                  // await Navigator.push(
                  //     context,
                  //     CustomPageRoute(
                  //         child: TaskCreator(
                  //             editEnable: true,
                  //             newTask: Task(
                  //                 date: DateTime(
                  //                     date.year, date.month, date.day),
                  //                 icon: 1,
                  //                 description: " ",
                  //                 title: " ",
                  //                 priority: 1,
                  //                 isTaskDone: false)),
                  //         direction: AxisDirection.right));
                },
                rowHeight: 20,
                daysOfWeekHeight: 20,
                headerVisible: false,
                startingDayOfWeek:StartingDayOfWeek.monday,
                //TODO: apply settings for start day switch
                // settingsProvider.calendarSets.calendarSettings[0].isOn ==
                //         false
                //     ? StartingDayOfWeek.monday
                //     : StartingDayOfWeek.sunday,
                daysOfWeekVisible: true,
               // onPageChanged: (day) => calendarProvider.onMonthChange(day),
                //onDaySelected: calendarProvider.onDaySelected,
                // selectedDayPredicate: (day) =>
                //     isSameDay(calendarProvider.selDay, day),
                // eventLoader: calendarProvider.getCalendarValues,
                calendarBuilders: CalendarBuilders(
                  // headerTitleBuilder: (context, date) {
                  //   return Center(
                  //     child: Text(
                  //       '${DateFormat('MMM yy').format(date)} ',
                  //       style: Theme.of(context)
                  //           .textTheme
                  //           .headlineMedium!
                  //           .copyWith(fontSize: headerFontSize),
                  //     ),
                  //   );
                  // },
                  selectedBuilder: (context, date, notes){
                    return Container(
                      // color: Colors.green,
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        color: Theme.of(context).primaryColorLight,
                      ),
                      child: Center(
                          child: Text(
                            '${date.day}',
                            style: (date.weekday != 6 && date.weekday != 7)
                                ? Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: calendarFontSize,
                                fontWeight: FontWeight.w200)
                                : Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: calendarFontSize,
                                fontWeight: FontWeight.w200),
                          )),
                    );
                  },
                  todayBuilder: (context,date, notes){
                    return Container(
                      // color: Colors.green,
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Center(
                          child: Text(
                            '${date.day}',
                            style: (date.weekday != 6 && date.weekday != 7)
                                ? Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                fontSize: calendarFontSize,
                                fontWeight: FontWeight.w200)
                                : Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                fontSize: calendarFontSize,
                                fontWeight: FontWeight.w200),
                          )),
                    );
                  },
                  dowBuilder: (context, date) {
                    return SizedBox(
                      //       color: Colors.red,
                      height: 45,
                      width: 35,
                      child: Center(
                          child: Text(
                            '${DateFormat('E').format(date).substring(0,1)} ',//dateSymbols.NARROWWEEKDAYS.
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
                          )),
                    );
                  },
                  defaultBuilder: (context, date, notes) {
                    return SizedBox(
                      height: 45,
                      width: 35,
                      child: Center(
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
                          )),
                    );
                  },
                  markerBuilder: (context, date, notes) {
                    return notes.isNotEmpty
                        ? Align(
                        alignment: Alignment.bottomCenter,
                        child: CalendarMarker([5,4,3],1,3))

                    // Positioned(
                    //         right: 1,
                    //         bottom: 0,
                    //         top: 0,
                    //         child: CalendarMarker(notes.length,markerRadius,markerFontSize)
                    // )
                        : const Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 5,
                        height: 5,
                      ),
                    );
                  },
                ),
                calendarStyle: CalendarStyle(
                  cellMargin: EdgeInsets.symmetric(
                      horizontal: 1, vertical: 1),
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
                    //color: Theme.of(context).colorScheme.secondary,
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
                  headerPadding: EdgeInsets.all(1),
                  formatButtonVisible: true,
                  titleCentered: true,
                  formatButtonShowsNext: false,
                  formatButtonDecoration: BoxDecoration(
                    color: Theme.of(context)
                        .floatingActionButtonTheme
                        .backgroundColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),),
                  // rightChevronIcon: Icon(
                  //   Icons.arrow_right,
                  //   color: Theme.of(context).indicatorColor,
                  //   size: 3,
                  // ),
                  // leftChevronIcon: Icon(
                  //   Icons.arrow_left,
                  //   color: Theme.of(context).indicatorColor,
                  //   size: chevronIconSize,
                  // ),
                //   titleTextStyle: Theme.of(context)
                //       .textTheme
                //       .headlineMedium!
                //       .copyWith(fontSize: headerFontSize),
                //   formatButtonTextStyle: Theme.of(context)
                //       .textTheme
                //       .displaySmall!
                //       .copyWith(fontSize: calendarButtonFontSize),
                // ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(
                      fontSize: calendarFontSize,
                      fontWeight: FontWeight.w200),
                  weekendStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(
                      fontSize: calendarFontSize,
                      fontWeight: FontWeight.w200),
                ),
              ),

            ]),
      ),
    );
  }
}
