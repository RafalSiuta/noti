import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../utils/dimensions/size_info.dart';
import '../calendar/date_calendar.dart';

class TaskDatePickerDial extends StatefulWidget {
  final DateTime initialDate;
  final List<DateTime> scopeDatesList;
  final Function(DateTime, TimeOfDay) onDateSelected;
  final StartingDayOfWeek startingDayOfWeek;
  final CalendarFormat calendarFormat;
  final Function(DateTime)? onMonthChange;
  final Function(CalendarFormat)? onFormatChanged;


  const TaskDatePickerDial({
    super.key,
    required this.initialDate,
    required this.onDateSelected,
    this.startingDayOfWeek = StartingDayOfWeek.monday,
    this.calendarFormat = CalendarFormat.month,
    this.onMonthChange,
    this.onFormatChanged,
    required this.scopeDatesList,
  });

  @override
  _TaskDatePickerDialState createState() => _TaskDatePickerDialState();
}

class _TaskDatePickerDialState extends State<TaskDatePickerDial> {
  late DateTime focDay;
  late DateTime selDay;

  bool isExpanded = false;
  bool isDateScopeSelected = true;
  late DateTime startDate;
  late DateTime endDate;
  int daysToScope = 0;
  String durationCategory = "day";

  List<DateTime> generateDateScopeList(DateTime startDate, DateTime endDate, int daysToScope) {
    // Clear the existing date scope list
    widget.scopeDatesList.clear();
    //todo important add variable switchDurations
    Duration durationStep = Duration(days: daysToScope);
    switch(durationCategory){
      case "day":
        durationStep = Duration(days: daysToScope);
        break;
      case "month":
        durationStep = Duration(days: daysToScope);
        break;
      case "year":
        durationStep = Duration(days: daysToScope);
        break;
      case "hour":
        durationStep = Duration(hours: daysToScope);
        break;
      case "minute":
        durationStep = Duration(minutes: daysToScope);
        break;
      default: "day";
    }

    DateTime currentDate = startDate;
    if(daysToScope > 0){
      while (currentDate.isBefore(endDate.add(const Duration(days: 1)))) {
        widget.scopeDatesList.add(currentDate);
        currentDate = currentDate.add(durationStep);
      }
    }
    return widget.scopeDatesList;
  }


  void onExpanded(){
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void onScopeDateSelected(){
    setState(() {
      if(isDateScopeSelected){
        startDate = selDay;
      }else{
        endDate = selDay;
      }
      generateDateScopeList(startDate, endDate, daysToScope);
    });
  }

  void dayCounter(String operator){
    setState(() {
      if(operator == "+"){
        daysToScope++;
      } else {
        if(daysToScope <= 1){
          daysToScope = 0;
        } else {
          daysToScope--;
        }
      }
      // Reset and generate the new date scope list
      generateDateScopeList(startDate, endDate, daysToScope);
    });
  }

  void onDayLongPressed(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      if (!widget.scopeDatesList.any((day) => isSameDay(day, selectedDay))) {
        widget.scopeDatesList.add(selectedDay); // Dodaj wybraną datę tylko jeśli nie istnieje
      }
    });
  }

  List<DateTime> getCalendarDates(DateTime date) {

    return widget.scopeDatesList.where((item) {
      print("DATE PICKER DATES:  ${item}");
      return isSameDay(item, date);
    }).toList();
  }



  @override
  void initState() {
    super.initState();
    startDate = widget.initialDate;
    focDay = widget.initialDate;
    selDay = widget.initialDate;
    endDate = DateTime.now().add(const Duration(days: 2));
    getCalendarDates(focDay);

  }

  @override
  Widget build(BuildContext context) {
    var textSize = SizeInfo.headerSubtitleSize;
    var pickerSubtitle = SizeInfo.calendarDaySize;
    var baseColor = Theme.of(context).textTheme.headlineMedium!.color;
    var selectedDateColor = Theme.of(context).indicatorColor;
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setDialState) {
        return Card(
          elevation: 5.0,
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/14,
              vertical: MediaQuery.of(context).size.height/6.5
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
                        selDay = selectedDay;
                        focDay = focusedDay;
                        if (isDateScopeSelected) {
                          startDate = selectedDay;
                        } else {
                          endDate = selectedDay;
                        }

                            if (selectedDay != widget.initialDate) {
                              TimeOfDay time = TimeOfDay(hour: selectedDay.hour, minute: selectedDay.minute);
                              widget.onDateSelected(startDate, time);
                            }
                        onScopeDateSelected();
                      });
                    },
                  onMonthChange: (focusedDay) {
                      setState(() {
                        focDay = focusedDay;
                      });
                  },
                  onFormatChanged: widget.onFormatChanged ?? (_){},
                  startingDayOfWeek: widget.startingDayOfWeek,
                  calendarFormat: widget.calendarFormat,
                  onDayLongPressed: onDayLongPressed,
                  events:getCalendarDates
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: (){
                  setDialState((){
                    isExpanded = !isExpanded;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('more options',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                          //height: 1.5,
                            color: isExpanded ? selectedDateColor : baseColor,
                            fontSize:pickerSubtitle),
                      ),Icon(Icons.arrow_drop_down,size: textSize,color: isExpanded ? selectedDateColor : baseColor,)
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: isExpanded,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 5.0),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(
                        width: 0.5,
                        color: Theme.of(context).dividerTheme.color!,))
                  ),

                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      TextButton(onPressed: (){
                        setDialState((){
                          isDateScopeSelected = true;
                        });
                      }, child: RichText(
                        text: TextSpan(
                            text: DateFormat('dd MMM yy').format(startDate),
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                height: 1.5,
                                color: isDateScopeSelected ? selectedDateColor : baseColor,
                                fontSize:pickerSubtitle),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "\ndate from",
                                  style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                                    color: isDateScopeSelected ? selectedDateColor : baseColor,
                                  )
                              )
                            ]
                        ),
                      )),
                      TextButton(onPressed: (){
                        setDialState((){
                          isDateScopeSelected = false;
                        });
                      }, child: RichText(
                        text: TextSpan(
                            text: DateFormat('dd MMM yy').format(endDate),
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                              height: 1.5,
                              fontSize:pickerSubtitle,
                              color: !isDateScopeSelected ? selectedDateColor : baseColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "\ndate to",
                                  style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                                    color: !isDateScopeSelected ? selectedDateColor : baseColor,
                                  )
                              )
                            ]
                        ),
                      )),
                      IconButton(
                          splashColor: Colors.transparent,
                          onPressed: (){
                            setDialState(() {
                              dayCounter("-");
                            });
                          },
                          icon: Icon(
                            Icons.remove_circle_outline,
                            size: textSize,
                            color: baseColor,
                          )),
                      Text(daysToScope.toString(),style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                        height: 1.5,
                        fontSize:pickerSubtitle,
                        color: baseColor,
                      ),),
                      IconButton(
                          splashColor: Colors.transparent,
                          onPressed: (){
                            setDialState(() {
                              dayCounter("+");
                            });
                          },
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: textSize,
                            color: baseColor,
                          )),

                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,bottom: 8.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    //Navigator.of(context).pop(),
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
        );
      },
    );
  }
}

