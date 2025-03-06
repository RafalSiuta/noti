import 'package:flutter/material.dart';
import 'package:noti/widgets/calendar/calendar.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../models/db_model/task.dart';
import '../../providers/task_provider/task_provider.dart';
import '../../screens/task_screen/task_creator_screen.dart';
import '../../utils/customPageRoute/custom_page_route.dart';

class SmallCalendar extends StatelessWidget {
  const SmallCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context,taskProvider,child){
        DateTime focDay = DateTime.now();
        return Calendar(
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
                            description: "",
                            title: "",
                            priority: 1,
                            isTaskDone: false)),
                    direction: AxisDirection.right));
          },
        );
      },
    );
  }
}
