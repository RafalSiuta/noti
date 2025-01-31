import 'package:flutter/material.dart';
  import 'package:intl/intl.dart';
  import 'package:table_calendar/table_calendar.dart';
  import '../../utils/dimensions/size_info.dart';
  import '../calendar/date_calendar.dart';

  class NoteDatePickerDial extends StatefulWidget {
  final DateTime initialDate;
  final Function(DateTime, TimeOfDay) onDateSelected;
  final StartingDayOfWeek startingDayOfWeek;
  final CalendarFormat calendarFormat;
  final Function(DateTime)? onMonthChange;
  final Function(CalendarFormat)? onFormatChanged;


  const NoteDatePickerDial({
    super.key,
    required this.initialDate,
    required this.onDateSelected,
    this.startingDayOfWeek = StartingDayOfWeek.monday,
    this.calendarFormat = CalendarFormat.month,
    this.onMonthChange,
    this.onFormatChanged,
  });

  @override
  _NoteDatePickerDialState createState() => _NoteDatePickerDialState();
}

class _NoteDatePickerDialState extends State<NoteDatePickerDial> {
  late DateTime focDay;
  late DateTime selDay;

  bool isExpanded = false;
  bool isDateScopeSelected = true;
  late DateTime startDate;
  late DateTime endDate;
  int daysToScope = 1;

  @override
  void initState() {
    super.initState();
    startDate = widget.initialDate;
    focDay = widget.initialDate;
    selDay = widget.initialDate;
    endDate = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    var textSize = SizeInfo.headerSubtitleSize;
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setDialState) {
        return Center(
          child: Card(
            elevation: 5.0,
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/14,
                vertical: MediaQuery.of(context).size.height/5
            ),
          
            color: Theme.of(context).colorScheme.onSurface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //calendar picker header
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: textSize * 3,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Theme.of(context).datePickerTheme.headerBackgroundColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          splashColor: Colors.transparent,
                          onPressed: (){
                            setState(() {
                              focDay = DateTime(focDay.year, focDay.month - 1, focDay.day);
                            });
                          },
                          icon: Icon(
                            Icons.arrow_left,
                            size: textSize,
                          )),
                      Text(
                        DateFormat('MMMM yy').format(focDay),
                        style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),
                      ),
                      IconButton(
                          splashColor: Colors.transparent,
                          onPressed: (){
                            setState(() {
                              focDay = DateTime(focDay.year, focDay.month + 1, focDay.day);
                            });
                          },
                          icon: Icon(
                            Icons.arrow_right,
                            size: textSize,
                          )),
                    ],
                  ),
                ),
                //calendar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 0),
                  child:
                  DateCalendar(
                            focDay: focDay,
                            selDay: selDay,
                            onDaySelected: (selectedDay, focusedDay) {
                              setDialState(() {
                                focDay = focusedDay;
                                selDay = selectedDay;
                                if (selectedDay != widget.initialDate) {
                                  TimeOfDay time = TimeOfDay(hour: selectedDay.hour, minute: selectedDay.minute);
                                  widget.onDateSelected(selectedDay, time);
                                }
                              });
                            },
                            onMonthChange: (focusedDay) {
                              setDialState(() {
                                focDay = focusedDay;
                              });
                            },
                            onFormatChanged: widget.onFormatChanged ?? (_){},
                            startingDayOfWeek: widget.startingDayOfWeek,
                            calendarFormat: widget.calendarFormat,
                            markerColor: Theme.of(context).indicatorColor,
                            events:(day) {
                              return [];
                            },
                          ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0,bottom: 8.0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Ok',
                        style: Theme.of(context)
                            .dialogTheme
                            .contentTextStyle!
                            .copyWith(fontSize: textSize),
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

