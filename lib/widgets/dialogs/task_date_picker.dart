import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../utils/colors/priority_color.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/icon_btn.dart';
import '../calendar/date_calendar.dart';
import '../headers/expandable_header.dart';

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
  double daysOnScope = 0;
  double daysOffScope = 0;
  int durationCategoryCounter = 0;
  int maxScopeOn = 6;   // defaulty, nadpiszemy
  int maxScopeOff = 99; // defaulty, nadpiszemy
  List<String> durationCategory = ["day","week", "month"];

  int _diffInDaysInclusive(DateTime a, DateTime b) {
    final aa = DateTime(a.year, a.month, a.day);
    final bb = DateTime(b.year, b.month, b.day);
    final d = bb.difference(aa).inDays;
    return d < 0 ? 0 : d + 1; // +1 bo end inclusive
  }

  int _weeksInclusive(DateTime a, DateTime b) {
    final d = _diffInDaysInclusive(a, b);
    return d == 0 ? 0 : ( (d - 1) ~/ 7 ) + 1; // np. ten sam dzień => 1 tydzień
  }

// Liczymy liczbę „miesięcznych tików” tak jak generator (z clampingiem):
  int _monthsInclusive(DateTime a, DateTime b) {
    if (b.isBefore(a)) return 0;
    final h = widget.initialDate.hour, m = widget.initialDate.minute;
    int count = 0;
    DateTime cur = DateTime(a.year, a.month, a.day, h, m);
    final endLimit = DateTime(b.year, b.month, b.day, h, m);
    while (!cur.isAfter(endLimit)) {
      count++;
      cur = _safeAddMonths(cur, 1, h, m);
    }
    return count;
  }


  void _recomputeScopeLimits() {
    final mode = durationCategory[durationCategoryCounter];

    final daysTotalInc   = _diffInDaysInclusive(startDate, endDate);
    final weeksTotalInc  = _weeksInclusive(startDate, endDate);
    final monthsTotalInc = _monthsInclusive(startDate, endDate);

    switch (mode) {
      case "day":
        maxScopeOn  = daysTotalInc;
        maxScopeOff = daysTotalInc;
        break;
      case "week":
        maxScopeOn  = weeksTotalInc;
        maxScopeOff = weeksTotalInc;
        break;
      case "month":
        maxScopeOn  = monthsTotalInc;
        maxScopeOff = monthsTotalInc;
        break;
      default:
        maxScopeOn = 0;
        maxScopeOff = 0;
    }

    daysOnScope  = daysOnScope.clamp(0, maxScopeOn).toDouble();
    daysOffScope = daysOffScope.clamp(0, maxScopeOff).toDouble();
  }



  int _lastDayOfMonth(int year, int month) {
    // month w zakresie 1..12
    final firstNext = (month == 12)
        ? DateTime(year + 1, 1, 1)
        : DateTime(year, month + 1, 1);
    return firstNext.subtract(const Duration(days: 1)).day;
  }

  DateTime _safeAtHM(DateTime d, int h, int m) =>
      DateTime(d.year, d.month, d.day, h, m);

  DateTime _safeAddDays(DateTime d, int days, int h, int m) =>
      DateTime(d.year, d.month, d.day + days, h, m);

// „Przesuń o N miesięcy” z zaciskiem dnia do końca miesiąca
  DateTime _safeAddMonths(DateTime d, int months, int h, int m) {
    final targetMonth = d.month + months;
    final targetYear  = d.year + ((targetMonth - 1) ~/ 12);
    final monthNorm   = ((targetMonth - 1) % 12) + 1; // 1..12
    final lastDay     = _lastDayOfMonth(targetYear, monthNorm);
    final dayClamped  = d.day.clamp(1, lastDay);
    return DateTime(targetYear, monthNorm, dayClamped, h, m);
  }


  List<DateTime> generateDateScopeList(
      DateTime startDate,
      DateTime endDate,
      int intervalOn,
      int intervalOff,
      ) {
    widget.scopeDatesList.clear();

    final h = widget.initialDate.hour;
    final m = widget.initialDate.minute;

    // KONIEC inkluzywny: to, co równe endLimit, też łapiemy
    final endLimit = DateTime(endDate.year, endDate.month, endDate.day, h, m);
    DateTime currentDate = DateTime(startDate.year, startDate.month, startDate.day, h, m);

    // if (intervalOn <= 0 || currentDate.isAfter(endLimit)) return widget.scopeDatesList;

    if (intervalOn <= 0 || currentDate.isAfter(endLimit)) return widget.scopeDatesList;
    final int safetyCap = 100000; // duży, ale kończy, jeśli coś poszło nie tak
    int guard = 0;
    while (!currentDate.isAfter(endLimit) && guard++ < safetyCap){
      final mode = durationCategory[durationCategoryCounter];

      DateTime atHM(DateTime d) => DateTime(d.year, d.month, d.day, h, m);
      DateTime addDays(DateTime d, int days) => DateTime(d.year, d.month, d.day + days, h, m);

      if (mode == "day") {
        for (int i = 0; i < intervalOn && !currentDate.isAfter(endLimit); i++) {
          widget.scopeDatesList.add(atHM(currentDate));
          currentDate = addDays(currentDate, 1);
        }
        if (intervalOff > 0 && !currentDate.isAfter(endLimit)) {
          currentDate = addDays(currentDate, intervalOff);
        }
        continue;
      }

      if (mode == "week") {
        for (int i = 0; i < intervalOn && !currentDate.isAfter(endLimit); i++) {
          widget.scopeDatesList.add(atHM(currentDate));
          currentDate = addDays(currentDate, 7);
        }
        if (intervalOff > 0 && !currentDate.isAfter(endLimit)) {
          currentDate = addDays(currentDate, 7 * intervalOff);
        }
        continue;
      }

      if (mode == "month") {
        for (int i = 0; i < intervalOn && !currentDate.isAfter(endLimit); i++) {
          widget.scopeDatesList.add(_safeAtHM(currentDate, h, m));
          currentDate = _safeAddMonths(currentDate, 1, h, m); // z „clampingiem”
        }
        if (intervalOff > 0 && !currentDate.isAfter(endLimit)) {
          currentDate = _safeAddMonths(currentDate, intervalOff, h, m);
        }
        continue;
      }

      throw Exception("Invalid duration category");
    }
    //scopeDatesList' can't be used as a setter because it's final.
    // widget.scopeDatesList = widget.scopeDatesList.toSet().toList()
    //   ..sort((a, b) => a.compareTo(b));
    return widget.scopeDatesList;
  }

  void onScopeDateSelected(){
    setState(() {
      if(isDateScopeSelected){
        startDate = selDay;
      }else{
        endDate = selDay;
      }
      _recomputeScopeLimits();
      generateDateScopeList(startDate, endDate, daysOnScope.toInt(),daysOffScope.toInt());
    });
  }

  void daysCounter(String operator, bool isDaysOn) {
    setState(() {
      final maxOn  = maxScopeOn;
      final maxOff = maxScopeOff;

      if (operator == "+") {
        if (isDaysOn) {
          if (daysOnScope < maxOn) daysOnScope++;
        } else {
          if (daysOffScope < maxOff) daysOffScope++;
        }
      } else {
        if (isDaysOn) {
          daysOnScope = (daysOnScope <= 1) ? 0 : daysOnScope - 1;
        } else {
          daysOffScope = (daysOffScope <= 1) ? 0 : daysOffScope - 1;
        }
      }

      generateDateScopeList(startDate, endDate, daysOnScope.toInt(), daysOffScope.toInt());
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
      _recomputeScopeLimits();
      generateDateScopeList(startDate, endDate, daysOnScope.toInt(),daysOffScope.toInt());
    });
  }


  void onDayLongPressed(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      final h = widget.initialDate.hour;
      final m = widget.initialDate.minute;
      final selectedAtHM = DateTime(selectedDay.year, selectedDay.month, selectedDay.day, h, m);

      bool exists = widget.scopeDatesList.any((day) => isSameDay(day, selectedDay));
      if (exists) {
        widget.scopeDatesList.removeWhere((day) => isSameDay(day, selectedDay));
      } else {
        widget.scopeDatesList.add(selectedAtHM);
      }
    });
  }


  void getFullMonth(DateTime focDay) {
    startDate = DateTime(focDay.year, focDay.month, 1);
    endDate   = DateTime(focDay.year, focDay.month + 1, 1)
        .subtract(const Duration(days: 1)); // <- ostatni dzień miesiąca
    _recomputeScopeLimits();
    generateDateScopeList(startDate, endDate, daysOnScope.toInt(),daysOffScope.toInt());
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
    endDate = widget.initialDate;//DateTime.now().add(const Duration(days: 2));
    getCalendarDates(focDay);

  }

  @override
  Widget build(BuildContext context) {
    var textSize = SizeInfo.headerSubtitleSize;
    var pickerSubtitle = SizeInfo.calendarDaySize;
    var baseColor = Theme.of(context).textTheme.headlineMedium!.color;
    var unselectedColor = Theme.of(context).unselectedWidgetColor;
    var selectedDateColor = Theme.of(context).indicatorColor;
    var markerColor = priorityColor(context,widget.priority);
    var leftEdgePadding = SizeInfo.leftEdgeCreatorPadding;
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
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Theme.of(context).datePickerTheme.headerBackgroundColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconBtn(
                        icon: Icons.arrow_left,
                        iconSize: textSize,
                        iconColor:  baseColor,
                        onPressed: (){
                          setDialState(() {
                            focDay = DateTime(focDay.year, focDay.month - 1, focDay.day);
                          });
                        },
                      ),
                      Text(
                        DateFormat('MMMM yy').format(focDay),
                        style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),
                      ),
                      IconBtn(
                        icon: Icons.arrow_right,
                        iconSize: textSize,
                        iconColor:  baseColor,
                        onPressed: (){
                          setDialState(() {
                            focDay = DateTime(focDay.year, focDay.month + 1, focDay.day);
                          });
                        },
                      ),

                    ],
                  ),
                ),
                //calendar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: leftEdgePadding),
                  child:
                  DateCalendar(
                    focDay: focDay,
                    selDay: selDay,
                    markerColor:markerColor,
                    rangeStartDay: startDate,
                    rangeEndDay: endDate,
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
                ExpandableHeader(
                  title: 'more options',
                  isExpanded: isExpanded,
                  padding: EdgeInsets.symmetric(horizontal: leftEdgePadding,vertical: 5.0),
                  onTap:(){
                    setDialState((){
                      isExpanded = !isExpanded;
                    });
                  },
                ),
                Visibility(
                  visible: isExpanded,
                  child: Container(
                    padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: leftEdgePadding),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                          width: 0.5,
                          color: Theme.of(context).dividerTheme.color!,))
                    ),
            
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: leftEdgePadding,
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
                              Text(
                                'OR',
                                style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                                  color: baseColor,
                                ),
                              ),
                              TextButton(
                                  style: ButtonStyle(
                                      shape:WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                      ) ,
                                      side: WidgetStateProperty.all(BorderSide(
                                        width: 0.5,
                                        color: baseColor!,
                                      ))
                                  ),
                                  onPressed: (){

                                    setState((){
                                      getFullMonth(focDay);
                                    });
                                  }, child: RichText(
                                text: TextSpan(
                                    text: "full month\n",
                                    style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                                      color: !isDateScopeSelected ? selectedDateColor : baseColor,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: DateFormat('MMM yy').format(focDay),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('${durationCategory[durationCategoryCounter]} on: ',style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                  height: 1.5,
                                  fontSize:pickerSubtitle,
                                  color: baseColor,
                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                Text('${durationCategory[durationCategoryCounter]} off: ',style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                  height: 1.5,
                                  fontSize:pickerSubtitle,
                                  color: baseColor,
                                ),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                            daysCounter("-",true);
                                          });
                                        },
                                        icon: Icon(
                                          Icons.remove_circle_outline,
                                          size: textSize,
                                          color: baseColor,
                                        )),
                                    RichText(
                                        text: TextSpan(
                                      text: "${daysOnScope.toInt()}/",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .copyWith(
                                        height: 1.5,
                                        fontSize:pickerSubtitle,
                                        color: baseColor,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "${maxScopeOn.toInt()}",
                                          style:  Theme.of(context)
                                              .textTheme
                                              .headlineMedium!
                                              .copyWith(
                                            height: 1.5,
                                            fontSize:pickerSubtitle,
                                            color: baseColor,
                                          ),
                                        )
                                      ]
                                    )),
                                    IconButton(
                                        splashColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: (){
                                          setDialState(() {
                                            daysCounter("+",true);
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
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: (){
                                          setDialState(() {
                                            daysCounter("-",false);
                                          });
                                        },
                                        icon: Icon(
                                          Icons.remove_circle_outline,
                                          size: textSize,
                                          color: baseColor,
                                        )),
                                    RichText(
                                        text: TextSpan(
                                            text: "${daysOffScope.toInt()}/",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium!
                                                .copyWith(
                                              height: 1.5,
                                              fontSize:pickerSubtitle,
                                              color: baseColor,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "${maxScopeOff.toInt()}",
                                                style:  Theme.of(context)
                                                    .textTheme
                                                    .headlineMedium!
                                                    .copyWith(
                                                  height: 1.5,
                                                  fontSize:pickerSubtitle,
                                                  color: baseColor,
                                                ),
                                              )
                                            ]
                                        )),
                                    IconButton(
                                        splashColor: Colors.transparent,
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        onPressed: (){
                                          setDialState(() {
                                            daysCounter("+",false);
                                          });
                                        },
                                        icon: Icon(
                                          Icons.add_circle_outline,
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

