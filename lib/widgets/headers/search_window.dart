
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:noti/providers/search_provider/search_provider.dart';
import 'package:noti/providers/settings_provider/settings_provider.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import 'package:noti/widgets/calendar/date_calendar.dart';
import 'package:noti/widgets/headers/expandable_header.dart';
import 'package:noti/widgets/headers/search_input.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../providers/note_provider/note_provider.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/custom_text_button.dart';
import '../buttons/text_icon_button.dart';
import '../calendar/calendar_header.dart';
import '../dialogs/warring_alert.dart';
import '../raters/priority_rater.dart';

class SearchWindow extends StatelessWidget {
  const SearchWindow({super.key, this.searchType = "task", required this.searchProvider,});
  final String searchType;
  final SearchProvider searchProvider;



  @override
  Widget build(BuildContext context) {
    return Consumer3<TaskProvider, NoteProvider,SettingsProvider>(
      builder: (context,taskProvider, noteProvider,settingsProvider, child) {

        var baseColor = Theme.of(context).textTheme.headlineMedium!.color;
        var searchIconSize = SizeInfo.searchIconSize;
        var topMargin = SizeInfo.menuTopMargin + 3;
        var markerColor = Theme.of(context).indicatorColor;
        var navIconSize = SizeInfo.leadingAndTrailingIconSize;
        var radius = 8.0;
        var raterIconSize = SizeInfo.switchButtonIconSize;
        var helpTextFontSize = SizeInfo.helpTextSize;
        var pickerSubtitle = SizeInfo.calendarDaySize;

        var leftEdgePadding = SizeInfo.leftEdgeCreatorPadding;

        BorderRadius searchBarBorderRadiusExpanded = BorderRadius.only(topLeft: Radius.circular(radius),topRight: Radius.circular(radius), bottomLeft:  Radius.circular(radius),  bottomRight:  Radius.circular(radius));
        return

          PlayAnimationBuilder(
          tween: Tween<Offset>(begin: const Offset(-20.0, 0), end: Offset.zero), duration: headerDuration,
          builder: (context,value,child){

            return
              Transform.translate(
                offset: value,
                child: Container(
                  margin: EdgeInsets.only(left:leftEdgePadding, top: topMargin, right: 1.5),
                  decoration: BoxDecoration(
                      borderRadius: searchBarBorderRadiusExpanded,
                      color: Theme.of(context).colorScheme.onSurface,
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
                        title:context.t(searchType == "task" ? "headers_text.header_search_tasks" : "headers_text.header_search_notes").capitalizeFirstLetter(),
                        //title: ,
                        isExpanded: searchProvider.isExpanded,
                        searchInputController: searchProvider.searchInputController,
                        searchFocusNode: searchProvider.searchFocusNode,
                        onChanged:(focusedDay){
                          searchProvider.onTextChange(focusedDay);
                          if(searchType == 'task'){
                            taskProvider.getTasksBySearchOptions();
                          }else{
                            noteProvider.getNoteBySearchOptions();
                          }

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
                            padding: EdgeInsets.symmetric(horizontal: leftEdgePadding,vertical: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 5.0,
                              children: [
                                //scope buttons
                                ExpandableHeader(
                                  title: "headers_text.header_dates_scope",
                                  isExpanded: searchProvider.isCalendarExpanded,
                                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: leftEdgePadding),
                                  onTap:(){
                                    searchProvider.onExpanded(1);
                                  },
                                ),
                                //calendar
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
                                        child: Wrap(
                                          spacing: 5.0,
                                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            CustomTextButton(
                                              title:"creators_text.date_from",
                                              //title: "date from: \n",
                                              isSelected: searchProvider.isDateScopeSelected,
                                              date:searchProvider.startDate,
                                              onPressed:(){
                                                searchProvider.onButtonSelected();
                                                if(searchType == 'task'){
                                                  taskProvider.getTasksBySearchOptions();
                                                }else{
                                                  noteProvider.getNoteBySearchOptions();
                                                }
                                              },
                                            ),
                                            CustomTextButton(
                                                title:"creators_text.date_to",
                                                //title: "date to: \n",
                                                isSelected: !searchProvider.isDateScopeSelected,
                                                date:searchProvider.endDate,
                                                onPressed: (){
                                                  searchProvider.onButtonSelected();
                                                  if(searchType == 'task'){
                                                    taskProvider.getTasksBySearchOptions();
                                                  }else{
                                                    noteProvider.getNoteBySearchOptions();
                                                  }
                                                },
                                            ),
                                            Text(
                                              context.t("creators_text.or"),
                                              //'OR',
                                              style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                                                color: baseColor,
                                              ),
                                            ),
                                            CustomTextButton(
                                              title:"creators_text.full_month",
                                              //title: "full month\n",
                                              isSelected: false,
                                              isFullMonth: true,
                                              date:searchProvider.startDate,
                                              onPressed:() {
                                                searchProvider.getFullMonth();
                                                if(searchType == 'task'){
                                                  taskProvider.getTasksBySearchOptions();
                                                }else{
                                                  noteProvider.getNoteBySearchOptions();
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      //calendar header
                                      CalendarHeader(
                                        date:searchProvider.focDay,
                                        padding: EdgeInsets.symmetric(horizontal: leftEdgePadding),
                                        next: (){
                                          searchProvider.onButtonMonthChange("+");
                                        },
                                        previous: (){
                                          searchProvider.onButtonMonthChange("-");
                                        },
                                      ),
                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: leftEdgePadding),
                                        child: DateCalendar(
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
                                      ),

                                      Visibility(
                                        visible: searchType == 'task' ? true : false,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: leftEdgePadding, vertical: 5.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Divider(),
                                              Text(
                                                context.t("headers_text.header_priority_search").capitalizeFirstLetter(),
                                                // 'Search by priority or finished tasks',
                                                style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                height: 1.5,
                                                fontSize:pickerSubtitle,
                                                color: baseColor,
                                              ),),
                                              Padding(
                                                padding: EdgeInsets.symmetric(vertical: 8.0, ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Rater(
                                                        size: raterIconSize,
                                                        helperTextSize: helpTextFontSize,
                                                        starCount: 3,
                                                        rating: searchProvider.priority,
                                                        onRatingChanged: (rating) {
                                                          searchProvider.setRating(rating);
                                                          if(searchType == 'task'){
                                                            taskProvider.getTasksBySearchOptions();
                                                          }else{
                                                            noteProvider.getNoteBySearchOptions();
                                                          }
                                                        }
                                                    ),
                                                    Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Transform.scale(
                                                          scale: 0.8,
                                                          child: Switch(
                                                              value: searchProvider.isDone,
                                                              onChanged: (value) {
                                                                searchProvider.onCheckIsDone(value);
                                                                if(searchType == 'task'){
                                                                  taskProvider.getTasksBySearchOptions();
                                                                }else{
                                                                  noteProvider.getNoteBySearchOptions();
                                                                }
                                                              }
                                                          ),
                                                        ),
                                                        Text(
                                                          context.t("headers_text.header_finished_tasks").capitalizeFirstLetter(),
                                                          // 'finished tasks',
                                                          style: Theme.of(context)
                                                              .textTheme
                                                              .headlineMedium!
                                                              .copyWith(
                                                              fontSize: navIconSize * 0.52 ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Divider(),
                                ExpandableHeader(
                                  title: "headers_text.header_actions",
                                  isExpanded: searchProvider.isActionsExpanded,
                                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: leftEdgePadding),
                                  onTap:(){
                                    searchProvider.onExpanded(2);
                                  },
                                ),
                                Visibility(
                                  visible: searchProvider.isActionsExpanded,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: leftEdgePadding),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        IconButtonWithText(
                                            iconData: Icons.refresh,
                                            iconName: 'icons_text.reset_filters',
                                            iconSize: navIconSize,
                                            value: true,
                                            onChanged: (val) {
                                              if(searchType == 'task'){
                                                taskProvider.resetTaskSearch();
                                              }else{
                                                noteProvider.resetNoteSearch();
                                              }

                                            }),
                                        IconButtonWithText(
                                            iconData: Icons.delete,
                                            iconName: 'icons_text.delete_selected',
                                            iconSize: navIconSize,
                                            value: true,
                                            onChanged: (val) {
                                              _warringAlert(
                                                  context,(){
                                                if(searchType == 'task'){
                                                  taskProvider.deleteSelectedTasks();
                                                }else{
                                                  noteProvider.deleteSelectedNotes();
                                                }

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
