import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/switch_btn.dart';
import '../calendar/calendar.dart';

class DatePickerDial extends StatefulWidget {
  final DateTime initialDate;
  final Function(DateTime, TimeOfDay) onDateSelected;
  final StartingDayOfWeek startingDayOfWeek;
  final CalendarFormat calendarFormat;
  final Function(DateTime)? onMonthChange;
  final Function(CalendarFormat)? onFormatChanged;


  const DatePickerDial({
    super.key,
    required this.initialDate,
    required this.onDateSelected,
    this.startingDayOfWeek = StartingDayOfWeek.monday,
    this.calendarFormat = CalendarFormat.month,
    this.onMonthChange,
    this.onFormatChanged,
  });

  @override
  _DatePickerDialState createState() => _DatePickerDialState();
}

class _DatePickerDialState extends State<DatePickerDial> {
  late DateTime focDay;
  late DateTime selDay;

  bool isExpanded = false;
  bool isDateScopeSelected = true;
  late DateTime startDate;
  late DateTime endDate;
  int daysToScope = 1;

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
    });
  }

  void dayCounter(String operator){
    setState(() {
      if(operator == "+"){
        daysToScope++;
      }else {
        if(daysToScope <= 1){
          daysToScope = 0;
        }else{
          daysToScope--;
        }
      }
    });

  }

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
                      DateFormat('dd MMM yy').format(selDay),
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
                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 0),
                child: Calendar(
                          isHeaderVisible: false,
                          focDay: focDay,
                          selDay: selDay,
                          topSpacing: 0,
                          onDaySelected: (selectedDay, focusedDay) {
                            setDialState(() {
                              focDay = focusedDay;
                              selDay = selectedDay;
                              if (selectedDay != widget.initialDate) {
                                TimeOfDay time = TimeOfDay(hour: selectedDay.hour, minute: selectedDay.minute);
                                widget.onDateSelected(selectedDay, time);
                              }
                              onScopeDateSelected();
                            });
                          },
                          onMonthChange: widget.onMonthChange ?? (_){}, // Dodaj domyślną funkcję, gdy onMonthChange jest null
                          onFormatChanged: widget.onFormatChanged ?? (_){},
                          startingDayOfWeek: widget.startingDayOfWeek,
                          calendarFormat: widget.calendarFormat,
                          taskEvents: (DateTime date) => [],
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
                          isDateScopeSelected = !isDateScopeSelected;
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
                          isDateScopeSelected = !isDateScopeSelected;
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

