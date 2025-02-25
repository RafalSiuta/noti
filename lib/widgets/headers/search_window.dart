import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:noti/providers/search_provider.dart';
import 'package:noti/providers/settings_provider.dart';
import 'package:noti/widgets/calendar/date_calendar.dart';
import 'package:noti/widgets/headers/expandable_header.dart';
import 'package:noti/widgets/headers/search_input.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../providers/note_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/custom_text_button.dart';
import '../buttons/icon_button.dart';
import '../calendar/calendar_header.dart';
import '../dialogs/warring_alert.dart';

// class SearchInput extends StatefulWidget {
//   const SearchInput({super.key});
//
//   @override
//   State<SearchInput> createState() => _SearchInputState();
// }
//
// class _SearchInputState extends State<SearchInput>  {
//   bool editTextEnable = false;
//   TextEditingController searchInputController = TextEditingController();
//   late FocusNode searchFocusNode = FocusNode();
//
//   bool isExpanded = false;
//   bool isCalendarExpanded = true;
//   bool isActionsExpanded = true;
//
//   late DateTime focDay;
//   late DateTime selDay;
//
//   bool isDateScopeSelected = true;
//
//   void onExpanded(int section){
//     setState(() {
//       switch (section){
//         case 0:
//           isExpanded = !isExpanded;
//           break;
//         case 1:
//           isCalendarExpanded = !isCalendarExpanded;
//           break;
//         case 2:
//           isActionsExpanded = !isActionsExpanded;
//           break;
//
//         default: 0;
//       }
//
//     });
//
//   }
//
//   void editText() {
//     if (!editTextEnable) {
//       setState(() {
//         editTextEnable = true;
//         searchFocusNode.requestFocus();
//       });
//     } else {
//       setState(() {
//         editTextEnable = false;
//         searchFocusNode.unfocus();
//       });
//     }
//   }
//
//   void onScopeDateSelected(DateTime startDate, DateTime endDate){
//     setState(() {
//       if(isDateScopeSelected){
//         startDate = selDay;
//       }else{
//         endDate = selDay;
//       }
//     });
//   }
//
//   List<DateTime> getCalendarDates(DateTime date) {
//     // return widget.scopeDatesList.where((item) {
//     //   return isSameDay(item, date);
//     // }).toList();
//     return [];
//   }
//
//   @override
//   void initState() {
//     focDay = DateTime.now();
//     selDay = DateTime.now();
//
//     searchFocusNode.addListener(() {
//       setState(() {
//         editTextEnable = searchFocusNode.hasFocus;
//       });
//     });
//
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     searchInputController.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Consumer2<NoteProvider,SettingsProvider>(
//       builder: (context, noteProvider,settingsProvider, child) {
//         var textSize = SizeInfo.headerSubtitleSize;
//         var pickerSubtitle = SizeInfo.calendarDaySize;
//         var baseColor = Theme.of(context).textTheme.headlineMedium!.color;
//         var selectedDateColor = Theme.of(context).indicatorColor;
//         var searchBarFontSize = SizeInfo.headerSubtitleSize;
//         var searchIconSize = SizeInfo.searchIconSize;
//         var searchBarHeight = SizeInfo.searchBarHeight;
//         var topMargin = SizeInfo.menuTopMargin + 3;
//         var markerColor = Theme.of(context).indicatorColor;
//         var navIconSize = SizeInfo.leadingAndTrailingIconSize;
//         var radius = 8.0;
//         BorderRadius searchBarBorderRadius = BorderRadius.only(topLeft: Radius.circular(radius),topRight: Radius.circular(radius), bottomLeft: isExpanded ? Radius.circular(.0) : Radius.circular(radius),  bottomRight: isExpanded ? Radius.circular(.0) : Radius.circular(radius));
//         BorderRadius searchBarBorderRadiusExpanded = BorderRadius.only(topLeft: Radius.circular(radius),topRight: Radius.circular(radius), bottomLeft:  Radius.circular(radius),  bottomRight:  Radius.circular(radius));
//         return PlayAnimationBuilder(
//           tween: Tween<Offset>(begin: const Offset(-20.0, 0), end: Offset.zero), duration: headerDuration,
//           builder: (context,value,child){
//             return
//               Transform.translate(
//                 offset: value,
//                 child: Container(
//                   margin: EdgeInsets.only(left: 5.0, top: topMargin, right: 1.5),
//                   decoration: BoxDecoration(
//                       borderRadius: searchBarBorderRadiusExpanded,
//                       color: Theme.of(context).scaffoldBackgroundColor,
//                       boxShadow: <BoxShadow>[
//                         BoxShadow(
//                           color: Theme.of(context).unselectedWidgetColor.withValues(alpha: 0.5),
//                           offset: const Offset(0.5, 1),
//                           blurRadius: 1.0,
//                         ),
//                       ]
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       //input search
//                       Container(
//                         key: widget.key,
//                         width: MediaQuery.of(context).size.width,
//                         height: searchBarHeight,
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
//                         decoration: BoxDecoration(
//                           borderRadius: searchBarBorderRadius,
//                           boxShadow: <BoxShadow>[
//                             BoxShadow(
//                               color: Theme.of(context).unselectedWidgetColor.withValues(alpha:0.5),
//                               offset: const Offset(0.0, 0.0),
//                             ),
//                             BoxShadow(
//                               color: Theme.of(context).scaffoldBackgroundColor,
//                               offset: const Offset(0.0, 0.0),
//                               spreadRadius: -1.0,
//                               blurRadius: 1.0,
//                             ),
//                           ],
//                         ),
//                         child: TextField(
//                           maxLines: 1,
//                           cursorWidth: 1,
//                           keyboardType: TextInputType.text,
//                           controller: searchInputController,
//                           enabled: true, // Zawsze aktywne, sterujemy samym focusem
//                           focusNode: searchFocusNode,
//                           autofocus: false, // Nie wymuszamy od razu klawiatury
//                           maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
//                           contextMenuBuilder: (context, editableTextState) {
//                             return CustomTextSelectionToolbar(
//                                 key: widget.key, editableTextState: editableTextState);
//                           },
//                           onChanged: (newText) {
//                             setState(() {
//                               noteProvider.keyword = newText;
//                               searchInputController.selection = TextSelection.fromPosition(
//                                   TextPosition(offset: searchInputController.text.length));
//                             });
//                             noteProvider.getNoteByKeyword();
//                           },
//                           onEditingComplete: () {
//                             editText();
//                           },
//                           cursorColor: Theme.of(context).indicatorColor,
//                           textAlign: TextAlign.left,
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyMedium!
//                               .copyWith(fontSize: searchBarFontSize),
//                           decoration: InputDecoration(
//                               border: InputBorder.none,
//                               focusedBorder: InputBorder.none,
//                               enabledBorder: InputBorder.none,
//                               errorBorder: InputBorder.none,
//                               disabledBorder: InputBorder.none,
//                               hintText: 'Search notes...',
//                               hintMaxLines: 1,
//                               hintStyle: Theme.of(context)
//                                   .textTheme
//                                   .bodyMedium!
//                                   .copyWith(fontSize: searchBarFontSize, letterSpacing: 1),
//                               suffixIcon: GestureDetector(
//                                 onTap: () {
//                                   if (searchFocusNode.hasFocus) {
//                                     FocusScope.of(context).unfocus();
//                                   }
//                                   onExpanded(0);
//                                 },
//                                 child: Icon(
//                                   Icons.filter_alt,
//                                   size: searchIconSize,
//                                   color: Theme.of(context).textTheme.headlineLarge!.color,
//                                 ),
//                               ),
//                               suffixIconConstraints: BoxConstraints(maxWidth: 40, maxHeight: 40)),
//                         ),
//                       ),
//                       Visibility(
//                           visible: isExpanded,
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               spacing: 5.0,
//                               children: [
//                                 //scope buttons
//                                 ExpandableHeader(
//                                   title: 'Select dates scope: ',
//                                   isExpanded: isCalendarExpanded,
//                                   padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
//                                   onTap:(){
//                                     onExpanded(1);
//                                   },
//                                 ),
//                                 Visibility(
//                                   visible: isCalendarExpanded,
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//
//
//                                       //scope buttons
//                                       Padding(
//                                         padding: const EdgeInsets.symmetric(vertical:
//                                         8.0),
//                                         child: Row(
//                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                           children: [
//
//                                             TextButton(
//                                                 style: ButtonStyle(
//                                                     shape:WidgetStateProperty.all(
//                                                       RoundedRectangleBorder(
//                                                         borderRadius: BorderRadius.circular(10.0),
//                                                       ),
//                                                     ) ,
//                                                     side: WidgetStateProperty.all(BorderSide(
//                                                       width: 0.5,
//                                                       color: isDateScopeSelected ? selectedDateColor : baseColor!,
//                                                     ))
//                                                 ),
//                                                 onPressed: (){
//                                                   setState((){
//                                                     isDateScopeSelected = true;
//                                                   });
//                                                 }, child: RichText(
//                                               text: TextSpan(
//                                                   text: "date from: \n",
//                                                   style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
//                                                     color: isDateScopeSelected ? selectedDateColor : baseColor,
//                                                   ),
//                                                   children: <TextSpan>[
//                                                     TextSpan(
//                                                       text: DateFormat('dd MMM yy').format(noteProvider.startDate),
//                                                       style: Theme.of(context).textTheme
//                                                           .headlineMedium!
//                                                           .copyWith(
//                                                           height: 1.5,
//                                                           color: isDateScopeSelected ? selectedDateColor : baseColor,
//                                                           fontSize:pickerSubtitle),
//
//                                                     )
//                                                   ]
//                                               ),
//                                             )),
//                                             TextButton(
//                                                 style: ButtonStyle(
//                                                     shape:WidgetStateProperty.all(
//                                                       RoundedRectangleBorder(
//                                                         borderRadius: BorderRadius.circular(10.0),
//                                                       ),
//                                                     ) ,
//                                                     side: WidgetStateProperty.all(BorderSide(
//                                                       width: 0.5,
//                                                       color: isDateScopeSelected ? baseColor! : selectedDateColor,
//                                                     ))
//                                                 ),
//                                                 onPressed: (){
//                                                   setState((){
//                                                     isDateScopeSelected = false;
//                                                   });
//                                                 }, child: RichText(
//                                               text: TextSpan(
//                                                   text: "date to: \n",
//                                                   style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
//                                                     color: !isDateScopeSelected ? selectedDateColor : baseColor,
//                                                   ),
//                                                   children: <TextSpan>[
//                                                     TextSpan(
//                                                         text: DateFormat('dd MMM yy').format(noteProvider.endDate),
//                                                         style: Theme.of(context)
//                                                             .textTheme
//                                                             .headlineMedium!
//                                                             .copyWith(
//                                                           height: 1.5,
//                                                           fontSize:pickerSubtitle,
//                                                           color: !isDateScopeSelected ? selectedDateColor : baseColor,)
//
//                                                     )
//                                                   ]
//                                               ),
//                                             )),
//                                             Text(
//                                               'OR',
//                                               style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
//                                                 color: baseColor,
//                                               ),
//                                             ),
//                                             TextButton(
//                                                 style: ButtonStyle(
//                                                     shape:WidgetStateProperty.all(
//                                                       RoundedRectangleBorder(
//                                                         borderRadius: BorderRadius.circular(10.0),
//                                                       ),
//                                                     ) ,
//                                                     side: WidgetStateProperty.all(BorderSide(
//                                                       width: 0.5,
//                                                       color: baseColor!,
//                                                     ))
//                                                 ),
//                                                 onPressed: (){
//                                                   noteProvider.getFullMonth(focDay);
//                                                   // setState((){
//                                                   //   //isDateScopeSelected = false;
//                                                   // });
//                                                 }, child: RichText(
//                                               text: TextSpan(
//                                                   text: "full month\n",
//                                                   style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
//                                                     color: !isDateScopeSelected ? selectedDateColor : baseColor,
//                                                   ),
//                                                   children: <TextSpan>[
//                                                     TextSpan(
//                                                         text: DateFormat('MMM yy').format(focDay),
//                                                         style: Theme.of(context)
//                                                             .textTheme
//                                                             .headlineMedium!
//                                                             .copyWith(
//                                                           height: 1.5,
//                                                           fontSize:pickerSubtitle,
//                                                           color: !isDateScopeSelected ? selectedDateColor : baseColor,)
//
//                                                     )
//                                                   ]
//                                               ),
//                                             )),
//
//                                           ],
//                                         ),
//                                       ),
//                                       Divider(),
//                                       //calendar header
//                                       SizedBox(
//                                         width: MediaQuery.of(context).size.width,
//                                         height: textSize * 2,
//                                         child: Row(
//                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                           children: [
//                                             IconButton(
//                                                 splashColor: Colors.transparent,
//                                                 onPressed: (){
//                                                   setState(() {
//                                                     focDay = DateTime(focDay.year, focDay.month - 1, focDay.day);
//                                                   });
//                                                 },
//                                                 icon: Icon(
//                                                   Icons.arrow_left,
//                                                   size: textSize,
//                                                 )),
//                                             Text(
//                                               DateFormat('MMMM yy').format(focDay),
//                                               style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),
//                                             ),
//                                             IconButton(
//                                                 splashColor: Colors.transparent,
//                                                 onPressed: (){
//                                                   setState(() {
//                                                     focDay = DateTime(focDay.year, focDay.month + 1, focDay.day);
//                                                   });
//                                                 },
//                                                 icon: Icon(
//                                                   Icons.arrow_right,
//                                                   size: textSize,
//                                                 )),
//                                           ],
//                                         ),
//                                       ),
//                                       //calendar
//                                       DateCalendar(
//                                           focDay: focDay,
//                                           selDay: selDay,
//                                           rangeStartDay: noteProvider.startDate,
//                                           rangeEndDay: noteProvider.endDate,
//                                           markerColor:markerColor,
//                                           onDaySelected: (selectedDay, focusedDay) {
//                                             setState(() {
//                                               selDay = selectedDay;
//                                               focDay = focusedDay;
//                                               if (isDateScopeSelected) {
//                                                 noteProvider.startDate = selectedDay;
//                                               } else {
//                                                 noteProvider.endDate = selectedDay;
//                                               }
//                                               noteProvider.getNoteByKeyword();
//                                             });
//                                           },
//                                           onMonthChange: (focusedDay) {
//                                             setState(() {
//                                               focDay = focusedDay;
//                                             });
//                                           },
//                                           onFormatChanged: (_){},
//                                           startingDayOfWeek: settingsProvider.calendarStartDay!,
//                                           calendarFormat: CalendarFormat.month,
//                                           onDayLongPressed: (DateTime selectedDay, DateTime focusedDay) {},
//                                           events:getCalendarDates
//                                       ),
//
//                                     ],
//                                   ),
//                                 ),
//
//                                 Divider(),
//                                 ExpandableHeader(
//                                   title: 'Actions: ',
//                                   isExpanded: isActionsExpanded,
//                                   padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
//                                   onTap:(){
//                                     onExpanded(2);
//                                   },
//                                 ),
//                                 Visibility(
//                                   visible: isActionsExpanded,
//                                   child: Padding(
//                                     padding: EdgeInsets.symmetric(vertical: 8.0),
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         IconButtonWithText(
//                                             iconData: Icons.refresh,
//                                             iconName: 'reset filters',
//                                             iconSize: navIconSize,
//                                             value: true,
//                                             onChanged: (val) {
//                                               noteProvider.resetSearchFilters();
//                                               searchInputController.text = noteProvider.keyword;
//                                               focDay = DateTime.now();
//                                             }),
//                                         IconButtonWithText(
//                                             iconData: Icons.delete,
//                                             iconName: 'delete selected',
//                                             iconSize: navIconSize,
//                                             value: true,
//                                             onChanged: (val) {
//
//                                             }),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           )
//                       )
//                     ],
//                   ),
//                 ),
//               );
//           },
//         );
//       },
//     );
//   }
// }

class SearchWindow extends StatelessWidget {
  const SearchWindow({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer3<SearchProvider,NoteProvider,SettingsProvider>(
      builder: (context,searchProvider, noteProvider,settingsProvider, child) {

        var baseColor = Theme.of(context).textTheme.headlineMedium!.color;
        var searchIconSize = SizeInfo.searchIconSize;
        var topMargin = SizeInfo.menuTopMargin + 3;
        var markerColor = Theme.of(context).indicatorColor;
        var navIconSize = SizeInfo.leadingAndTrailingIconSize;
        var radius = 8.0;
        BorderRadius searchBarBorderRadiusExpanded = BorderRadius.only(topLeft: Radius.circular(radius),topRight: Radius.circular(radius), bottomLeft:  Radius.circular(radius),  bottomRight:  Radius.circular(radius));
        return PlayAnimationBuilder(
          tween: Tween<Offset>(begin: const Offset(-20.0, 0), end: Offset.zero), duration: headerDuration,
          builder: (context,value,child){
            return
              Transform.translate(
                offset: value,
                child: Container(
                  margin: EdgeInsets.only(left: 5.0, top: topMargin, right: 1.5),
                  decoration: BoxDecoration(
                      borderRadius: searchBarBorderRadiusExpanded,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Theme.of(context).unselectedWidgetColor.withValues(alpha: 0.5),
                          offset: const Offset(0.5, 1),
                          blurRadius: 1.0,
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SearchInput(
                        key: key,
                        title: "Search notes",
                        isExpanded: searchProvider.isExpanded,
                        searchInputController: searchProvider.searchInputController,
                        searchFocusNode: searchProvider.searchFocusNode,
                        onChanged:(focusedDay){
                            searchProvider.onTextChange(focusedDay);
                            noteProvider.getNoteBySearchOptions();
                        },
                          onEditingComplete: (){
                            searchProvider.editText();
                          },
                          suffixIcon:  GestureDetector(
                          onTap: () {
                          if (searchProvider.searchFocusNode.hasFocus) {
                          FocusScope.of(context).unfocus();
                          }
                          searchProvider.onExpanded(0);
                          },
                          child: Icon(
                          Icons.filter_alt,
                          size: searchIconSize,
                          color: Theme.of(context).textTheme.headlineLarge!.color,
                          ),
                          ),

                          ),
                          Visibility(
                          visible: searchProvider.isExpanded,
                          child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 5.0,
                              children: [
                                //scope buttons
                                ExpandableHeader(
                                  title: 'Select dates scope: ',
                                  isExpanded: searchProvider.isCalendarExpanded,
                                  padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                                  onTap:(){
                                    searchProvider.onExpanded(1);
                                  },
                                ),
                                Visibility(
                                  visible: searchProvider.isCalendarExpanded,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                      //scope buttons
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical:
                                        8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            CustomTextButton(
                                              title: "date from: \n",
                                              isSelected: searchProvider.isDateScopeSelected,
                                              date:DateFormat('dd MMM yy').format(searchProvider.startDate),
                                              onPressed: searchProvider.onButtonSelected,
                                            ),
                                            CustomTextButton(
                                              title: "date to: \n",
                                              isSelected: !searchProvider.isDateScopeSelected,
                                              date:DateFormat('dd MMM yy').format(searchProvider.endDate),
                                              onPressed: searchProvider.onButtonSelected
                                            ),
                                            Text(
                                              'OR',
                                              style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                                                color: baseColor,
                                              ),
                                            ),
                                            CustomTextButton(
                                              title: "full month\n",
                                              isSelected: false,
                                              date:DateFormat('dd MMM yy').format(searchProvider.startDate),
                                              onPressed:searchProvider.getFullMonth,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      //calendar header
                                      CalendarHeader(
                                        key: key,
                                        date:searchProvider.focDay,
                                        next: searchProvider.nextMonth,
                                        previous: searchProvider.previousMonth,
                                      ),
                                      DateCalendar(
                                          focDay: searchProvider.focDay,
                                          selDay: searchProvider.selDay,
                                          rangeStartDay: searchProvider.startDate,
                                          rangeEndDay: searchProvider.endDate,
                                          markerColor:markerColor,
                                          onDaySelected: searchProvider.onDaySelected,
                                          onMonthChange: searchProvider.onMonthChange,
                                          onFormatChanged: (_){},
                                          startingDayOfWeek: settingsProvider.calendarStartDay!,
                                          calendarFormat: CalendarFormat.month,
                                          onDayLongPressed: (DateTime selectedDay, DateTime focusedDay) {},
                                          events:searchProvider.getCalendarDates
                                      ),

                                    ],
                                  ),
                                ),

                                Divider(),
                                ExpandableHeader(
                                  title: 'Actions: ',
                                  isExpanded: searchProvider.isActionsExpanded,
                                  padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                                  onTap:(){
                                    searchProvider.onExpanded(2);
                                  },
                                ),
                                Visibility(
                                  visible: searchProvider.isActionsExpanded,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        IconButtonWithText(
                                            iconData: Icons.refresh,
                                            iconName: 'reset filters',
                                            iconSize: navIconSize,
                                            value: true,
                                            onChanged: (val) {
                                              searchProvider.resetSearchFilters();
                                            }),
                                        IconButtonWithText(
                                            iconData: Icons.delete,
                                            iconName: 'delete selected',
                                            iconSize: navIconSize,
                                            value: true,
                                            onChanged: (val) {
                                              _warringAlert(
                                                context,(){

                                              }
                                              );
                                            }),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          )
                      )
                    ],
                  ),
                ),
              );
          },
        );
      },
    );
  }

  static _warringAlert(BuildContext context, VoidCallback confirm) {
    showDialog(
        context: context,
        builder: (context) {
          return
            WarringAlert(
                message: "This action will delete selected items data permanently !!!",
                onConfirm: confirm
            );
        });
  }
}
