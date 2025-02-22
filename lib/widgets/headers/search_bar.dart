import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:noti/providers/settings_provider.dart';
import 'package:noti/widgets/calendar/date_calendar.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../providers/note_provider.dart';
import '../../utils/constans/const_values.dart';
import '../../utils/dimensions/size_info.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> with TickerProviderStateMixin {
  bool editTextEnable = false;
  TextEditingController keywordVal = TextEditingController();

  late AnimationController _controller;
  late AnimationController _controllerForScale;
  late Animation<double> _fadeAnim;
  late Animation<double> _scaleAnim;

  bool isExpanded = false;

  late DateTime focDay;
  late DateTime selDay;

  bool isDateScopeSelected = true;
  // late DateTime startDate;
  // late DateTime endDate;


  void onExpanded(){
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void editText() {
    setState(() {
      editTextEnable = !editTextEnable;
    });
  }

  void onDayLongPressed(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      // bool exists = widget.scopeDatesList.any((day) => isSameDay(day, selectedDay));
      // if (exists) {
      //   widget.scopeDatesList.removeWhere((day) => isSameDay(day, selectedDay));
      // } else {
      //   widget.scopeDatesList.add(selectedDay);
      // }
    });
  }

  void onScopeDateSelected(DateTime startDate, DateTime endDate){
    setState(() {
      if(isDateScopeSelected){
        startDate = selDay;
      }else{
        endDate = selDay;
      }
    });
  }


  List<DateTime> getCalendarDates(DateTime date) {
    // return widget.scopeDatesList.where((item) {
    //   return isSameDay(item, date);
    // }).toList();
    return [];
  }

  @override
  void initState() {
    focDay = DateTime.now();
    selDay = DateTime.now();
    // startDate = DateTime.now();
    // endDate = DateTime.now();

    _controller = AnimationController(
        vsync: this, duration: headerDuration);

    _controllerForScale = AnimationController(
        vsync: this, duration: headerDuration);

    _fadeAnim = Tween<double>(begin: fadeStartValue, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _scaleAnim = Tween<double>(begin: scaleStartValue, end: 1).animate(
        CurvedAnimation(parent: _controllerForScale, curve: Curves.easeInBack));

    super.initState();
    Future.delayed(const Duration(milliseconds: 200))
        .then((value) => _controller.forward());

    Future.delayed(headerDuration)
        .then((value) => _controllerForScale.forward());
  }

  @override
  void dispose() {

    _controller.dispose();
    _controllerForScale.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var textSize = SizeInfo.headerSubtitleSize;
    var pickerSubtitle = SizeInfo.calendarDaySize;
    var baseColor = Theme.of(context).textTheme.headlineMedium!.color;
    var selectedDateColor = Theme.of(context).indicatorColor;
    return Consumer2<NoteProvider,SettingsProvider>(
      builder: (context, noteProvider,settingsProvider, child) {
        var searchBarFontSize = SizeInfo.headerSubtitleSize;
        var searchIconSize = SizeInfo.searchIconSize;
        var searchBarHeight = SizeInfo.searchBarHeight;
        var topMargin = SizeInfo.menuTopMargin + 3;
        var markerColor = Theme.of(context).indicatorColor;
        return FadeTransition(
          opacity: _fadeAnim,
          child: ScaleTransition(
            scale: _fadeAnim,
            child: Container(
              margin: EdgeInsets.only(left: 8.0, top: topMargin, ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: blurValue, sigmaY: blurValue),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        key: widget.key,
                        width: MediaQuery.of(context).size.width,
                        height: searchBarHeight,
                        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Theme.of(context).unselectedWidgetColor.withValues(alpha:0.5),
                              offset: const Offset(0.0, 0.0),
                            ),
                            BoxShadow(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              offset: const Offset(0.0, 0.0),
                              spreadRadius: -1.5,
                              blurRadius: 1.5,
                            ),
                          ],
                        ),
                        child: ScaleTransition(
                          scale: _scaleAnim,
                          child: GestureDetector(
                            onTap: () {
                              editText();
                            },
                            child: TextField(
                              maxLines: 1,
                              cursorWidth: 1,
                              keyboardType: TextInputType.text,
                              enabled: editTextEnable,
                              onChanged: (newText) {
                                setState(() {
                                  noteProvider.keyword = newText;
                                  keywordVal.selection = TextSelection.fromPosition(
                                      TextPosition(offset: keywordVal.text.length));
                                });
                                noteProvider.getNoteByKeyword();
                              },
                              onEditingComplete: () {
                                editText();
                              },
                              cursorColor: Theme.of(context).textTheme.headlineSmall!.color,
                              controller: keywordVal,
                              autofocus: true,
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: searchBarFontSize),
                              decoration: InputDecoration(
                                  hintText: 'Search notes...',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: searchBarFontSize, letterSpacing: 1),
                                  prefixIcon: ScaleTransition(
                                    scale: _scaleAnim,
                                    child: FadeTransition(
                                      opacity: _scaleAnim,
                                      child: IconButton(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.zero,
                                        splashColor: Colors.transparent,
                                        onPressed: () {
                                          noteProvider.getNoteByKeyword();
                                          editText();
                                        },
                                        icon: Icon(
                                          Icons.search,
                                          size: searchIconSize,
                                          color: Theme.of(context).textTheme.headlineLarge!.color,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          onExpanded();
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: .0,vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('advanced search',
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: .0,vertical: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 5.0,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: textSize * 3,
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
                                DateCalendar(
                                    focDay: focDay,
                                    selDay: selDay,
                                    markerColor:markerColor,
                                    onDaySelected: (selectedDay, focusedDay) {
                                      setState(() {
                                        selDay = selectedDay;
                                        focDay = focusedDay;
                                        if (isDateScopeSelected) {
                                          noteProvider.startDate = selectedDay;
                                        } else {
                                          noteProvider.endDate = selectedDay;
                                        }
                                        noteProvider.getNoteByKeyword();
                                        print('SEARCH SELECTED START: ${noteProvider.startDate}, END ${noteProvider.endDate}');
                                      });
                                    },
                                    onMonthChange: (focusedDay) {
                                      setState(() {
                                        focDay = focusedDay;
                                      });
                                    },
                                    onFormatChanged: (_){},
                                    startingDayOfWeek: settingsProvider.calendarStartDay!,
                                    calendarFormat: CalendarFormat.month,
                                    onDayLongPressed: onDayLongPressed,
                                    events:getCalendarDates
                                ),
                                Text('Select dates scope: ',style: Theme.of(context)
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
                                            setState((){
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
                                                text: DateFormat('dd MMM yy').format(noteProvider.startDate),
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
                                            setState((){
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
                                                  text: DateFormat('dd MMM yy').format(noteProvider.endDate),
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
                              ],
                            ),
                          )
                      )
                    ],
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
