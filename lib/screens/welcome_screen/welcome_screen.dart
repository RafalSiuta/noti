import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../models/db_model/task.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../widgets/headers/date_header.dart';
import '../../widgets/calendar/calendar.dart';
import '../note_screen/note_list.dart';
import '../note_screen/sliver_note_list.dart';
import '../task_screen/sliver_task_list.dart';
import '../task_screen/task_creator_screen.dart';
import '../task_screen/task_list.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    DateTime focDay = DateTime.now();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final taskProvider = Provider.of<TaskProvider>(context, listen: false);
      taskProvider.onDaySelected(DateTime.now(), DateTime.now());
    });

    return Consumer<TaskProvider>(
        builder: (context, taskProvider, child)
    {
      return Stack(
        alignment: Alignment.topLeft,
        children:[
          CustomScrollView(
          key: key,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverToBoxAdapter(
              child: const DateHeader(),
            ),
            SliverToBoxAdapter(
              child: Calendar(
                      isHeaderVisible: false,
                      gesturesEnable: false,
                      focDay: focDay,
                      selDay: taskProvider.selDay,
                      startingDayOfWeek: taskProvider.settings.calendarStartDay ?? StartingDayOfWeek.monday,
                      onDaySelected: taskProvider.onDaySelected,
                      onMonthChange: (day) {
                      },
                      calendarFormat: CalendarFormat.week,
                      onFormatChanged: (format) {
                        taskProvider.changeDateFormat(format);
                      },
                      taskEvents: taskProvider.getCalendarValues,
                      onDayLongPressed: (DateTime date, dateTime) async {
                        await Navigator.push(
                            context,
                            CustomPageRoute(
                                child: TaskCreator(
                                    editEnable: true,
                                    newTask: Task(
                                        date: DateTime(
                                            date.year, date.month, date.day,DateTime.now().hour,DateTime.now().minute),
                                        icon: 1,
                                        description: " ",
                                        title: " ",
                                        priority: 1,
                                        isTaskDone: false)),
                                direction: AxisDirection.right));
                      },
                    ),
            ),
            SliverTaskList(),
            SliverToBoxAdapter(
              child: SizedBox(
                height:  MediaQuery.of(context).size.height / 3.2,
              ),
            )
          ],
        ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX:intensiveBlurValue, sigmaY:intensiveBlurValue),
                child: Container(
                    height: MediaQuery.of(context).size.height / 3.7,
                    margin: EdgeInsets.only(bottom: 10),
                    child: NoteList()),
              ),
            ),
          )
        ]
      );

      //   todo
      //   Container(
      //   key: key,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     key: key,
      //     children:  [
      //       const DateHeader(),
      //       Calendar(
      //         isHeaderVisible: false,
      //         gesturesEnable: false,
      //         focDay: focDay,
      //         selDay: taskProvider.selDay,
      //         startingDayOfWeek: taskProvider.settings.calendarStartDay ?? StartingDayOfWeek.monday,
      //         onDaySelected: taskProvider.onDaySelected,
      //         onMonthChange: (day) {
      //         },
      //         calendarFormat: CalendarFormat.week,
      //         onFormatChanged: (format) {
      //           taskProvider.changeDateFormat(format);
      //         },
      //         taskEvents: taskProvider.getCalendarValues,
      //         onDayLongPressed: (DateTime date, dateTime) async {
      //           await Navigator.push(
      //               context,
      //               CustomPageRoute(
      //                   child: TaskCreator(
      //                       editEnable: true,
      //                       newTask: Task(
      //                           date: DateTime(
      //                               date.year, date.month, date.day,DateTime.now().hour,DateTime.now().minute),
      //                           icon: 1,
      //                           description: " ",
      //                           title: " ",
      //                           priority: 1,
      //                           isTaskDone: false)),
      //                   direction: AxisDirection.right));
      //         },
      //       ),
      //       Expanded(flex: 6, child: TaskList()),
      //       Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: .0),
      //         child: Divider(
      //           height: 0.5,
      //         ),
      //       ),
      //       Expanded(
      //         flex: 3,
      //         child: NoteList(),
      //       ),
      //       SizedBox(
      //         height: 10.0,
      //       )
      //     ],
      //   ),
      // );
    });
  }
}
