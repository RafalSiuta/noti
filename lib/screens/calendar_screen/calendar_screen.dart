import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../models/db_model/task.dart';
import '../../providers/task_provider.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../task_screen/task_creator_screen.dart';
import '../task_screen/task_list.dart';
import '../../widgets/calendar/calendar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var spacingTop = SizeInfo.menuTopMargin;
    return Consumer<TaskProvider>(
        builder: (context, taskProvider, child){
         return CustomScrollView(
            physics:
            const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Calendar(
                    key: key,
                    topSpacing: spacingTop,
                    isHeaderVisible: true,
                    focDay: taskProvider.focDay,
                    selDay: taskProvider.selDay,
                    startingDayOfWeek: taskProvider.settings.calendarStartDay ?? StartingDayOfWeek.monday,
                    onDaySelected: taskProvider.onDaySelected,
                    onMonthChange: (day) {
                      taskProvider.onMonthChange(day);
                    },
                    calendarFormat: taskProvider.format,
                    onFormatChanged: (format) {
                      taskProvider.changeDateFormat(format);
                    },
                    taskEvents: taskProvider.getCalendarValues,
                    onDayLongPressed:
                        (DateTime date, dateTime) async {
                      await Navigator.push(
                          context,
                          CustomPageRoute(
                              child: TaskCreator(
                                  editEnable: true,
                                  newTask: Task(
                                      date: DateTime(
                                          date.year, date.month, date.day,DateTime.now().hour,DateTime.now().minute),
                                      icon: 1,
                                      description: "",
                                      title: "",
                                      priority: 1,
                                      isTaskDone: false)),
                              direction: AxisDirection.right));
                    },
                  ),
                ]),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: .0, vertical: 20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    TaskList(key: key),
                  ]),
                ),
              ),
            ],
          );
        });
  }
}
