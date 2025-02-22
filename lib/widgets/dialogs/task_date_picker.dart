import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../utils/colors/priority_color.dart';
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
  final int priority;


  const TaskDatePickerDial({
    super.key,
    required this.initialDate,
    required this.onDateSelected,
    this.startingDayOfWeek = StartingDayOfWeek.monday,
    this.calendarFormat = CalendarFormat.month,
    this.onMonthChange,
    this.onFormatChanged,
    required this.scopeDatesList,
    this.priority = 0,
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
  double daysToScope = 0;
  int durationCategoryCounter = 0;
  List<String> durationCategory = ["day","week","month","year"];

  List<DateTime> generateDateScopeList(DateTime startDate, DateTime endDate, int interval) {
    widget.scopeDatesList.clear();
    DateTime currentDate = DateTime(startDate.year, startDate.month, startDate.day,startDate.hour,startDate.minute);
    if(daysToScope > 0){
      while (currentDate.isBefore(endDate)) {
        widget.scopeDatesList.add(currentDate);
        switch (durationCategory[durationCategoryCounter]) {
          case "day":
            currentDate = currentDate.add(Duration(days: interval));
            break;
          case "week":
            currentDate = currentDate.add(Duration(days: 7 * interval));
            break;
          case "month":
            currentDate = DateTime(currentDate.year, currentDate.month + interval, currentDate.day,widget.initialDate.hour,widget.initialDate.minute);
            break;
          case "year":
            currentDate = DateTime(currentDate.year + interval, currentDate.month, currentDate.day,widget.initialDate.hour,widget.initialDate.minute);
            break;
          default:
            throw Exception("Invalid duration category");
        }
      }
    }
    return widget.scopeDatesList;
  }

  void onScopeDateSelected(){
    setState(() {
      if(isDateScopeSelected){
        startDate = selDay;
      }else{
        endDate = selDay;
      }
      generateDateScopeList(startDate, endDate, daysToScope.toInt());
    });
  }

  void dayCounter(String operator){
    setState(() {
      if(operator == "+"){
        if(daysToScope <= 99){
          daysToScope++;
        }

      } else {
        if(daysToScope <= 1){
          daysToScope = 0;
        } else {
          daysToScope--;
        }
      }
      generateDateScopeList(startDate, endDate, daysToScope.toInt());
    });
  }

  void switchCategoryDuration(String operator){
    setState(() {
      if(operator == "+"){
        if(durationCategoryCounter == durationCategory.length-1){
          durationCategoryCounter = durationCategory.length-1;
        }else{
          durationCategoryCounter++;
        }

      } else {
        if(durationCategoryCounter <= 1){
          durationCategoryCounter = 0;
        } else {
          durationCategoryCounter--;
        }
      }
      generateDateScopeList(startDate, endDate, daysToScope.toInt());
    });
  }


  void onDayLongPressed(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      bool exists = widget.scopeDatesList.any((day) => isSameDay(day, selectedDay));
      if (exists) {
        widget.scopeDatesList.removeWhere((day) => isSameDay(day, selectedDay));
      } else {
        widget.scopeDatesList.add(selectedDay);
      }
    });
  }


  List<DateTime> getCalendarDates(DateTime date) {
    return widget.scopeDatesList.where((item) {
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
    var markerColor = priorityColor(context,widget.priority);
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setDialState) {
        return Center(
          child: Card(
            elevation: 5.0,
            margin: EdgeInsets.all(
              MediaQuery.of(context).size.width / 14,
            ),
            color: Theme.of(context).colorScheme.onSurface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //calendar header
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
                            setDialState(() {
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
                            setDialState(() {
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
                    markerColor:markerColor,
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
                                TimeOfDay time = TimeOfDay(hour: widget.initialDate.hour, minute: widget.initialDate.minute);
                                widget.onDateSelected(startDate, time);
                              }
                          onScopeDateSelected();
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
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5.0),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                          width: 0.5,
                          color: Theme.of(context).dividerTheme.color!,))
                    ),
            
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Select dates scope to repeat task: ',style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                            height: 1.5,
                            fontSize:pickerSubtitle,
                            color: baseColor,
                          ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:
                            8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
            
                                TextButton(
                                    style: ButtonStyle(
                                        shape:WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ) ,
                                        side: WidgetStateProperty.all(BorderSide(
                                            width: 0.5,
                                            color: isDateScopeSelected ? selectedDateColor : baseColor!,
                                        ))
                                    ),
                                    onPressed: (){
                                  setDialState((){
                                    isDateScopeSelected = true;
                                  });
                                }, child: RichText(
                                  text: TextSpan(
                                      text: "date from: \n",
                                      style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                                        color: isDateScopeSelected ? selectedDateColor : baseColor,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: DateFormat('dd MMM yy').format(startDate),
                                          style: Theme.of(context).textTheme
                                          .headlineMedium!
                                          .copyWith(
                                            height: 1.5,
                                            color: isDateScopeSelected ? selectedDateColor : baseColor,
                                            fontSize:pickerSubtitle),
            
                                        )
                                      ]
                                  ),
                                )),
                                TextButton(
                                    style: ButtonStyle(
                                        shape:WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ) ,
                                        side: WidgetStateProperty.all(BorderSide(
                                          width: 0.5,
                                          color: isDateScopeSelected ? baseColor! : selectedDateColor,
                                        ))
                                    ),
                                    onPressed: (){
                                  setDialState((){
                                    isDateScopeSelected = false;
                                  });
                                }, child: RichText(
                                  text: TextSpan(
                                      text: "date to: \n",
                                      style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                                        color: !isDateScopeSelected ? selectedDateColor : baseColor,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                text: DateFormat('dd MMM yy').format(endDate),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                      height: 1.5,
                                      fontSize:pickerSubtitle,
                                      color: !isDateScopeSelected ? selectedDateColor : baseColor,)
            
                                        )
                                      ]
                                  ),
                                )),
            
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Repeat any: ',style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                height: 1.5,
                                fontSize:pickerSubtitle,
                                color: baseColor,
                              ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          splashColor: Colors.transparent,
                                          padding: EdgeInsets.zero,
                                          constraints: BoxConstraints(),
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
                                      Text('${daysToScope.toInt()}',style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(
                                        height: 1.5,
                                        fontSize:pickerSubtitle,
                                        color: baseColor,
                                      ),),
                                      IconButton(
                                          splashColor: Colors.transparent,
                                          padding: EdgeInsets.zero,
                                          constraints: BoxConstraints(),
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
            
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          splashColor: Colors.transparent,
            
                                          onPressed: (){
                                            setDialState(() {
                                              switchCategoryDuration("-");
                                            });
                                          },
                                          icon: Icon(
                                            Icons.arrow_left,
                                            size: textSize,
                                            color: baseColor,
                                          )),
                                      Text(durationCategory[durationCategoryCounter],style: Theme.of(context)
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
                                                switchCategoryDuration("+");
                                            });
                                          },
                                          icon: Icon(
                                            Icons.arrow_right,
                                            size: textSize,
                                            color: baseColor,
                                          )),
                                    ],
                                  ),
            
                                ],
                              ),
            
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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

