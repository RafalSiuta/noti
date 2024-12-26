import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../models/db_model/task.dart';
import '../../providers/task_provider.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../widgets/headers/date_header.dart';
import '../../widgets/calendar/calendar.dart';
import '../note_screen/note_list.dart';
import '../task_screen/task_creator_screen.dart';
import '../task_screen/task_list.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final taskProvider = Provider.of<TaskProvider>(context, listen: false);

    DateTime focDay = DateTime.now();
    //DateTime selDay = DateTime.now();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final taskProvider = Provider.of<TaskProvider>(context, listen: false);
      taskProvider.onDaySelected(DateTime.now(), DateTime.now());
    });

    return Consumer<TaskProvider>(
        builder: (context, taskProvider, child)
    {
      //taskProvider.onDaySelected(focDay, selDay);
      return Container(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          key: key,
          children:  [
            const DateHeader(),
            Calendar(
              isHeaderVisible: false,
              gesturesEnable: false,
              focDay: focDay, // Bieżący dzień wybrany w kalendarzu
              selDay: taskProvider.selDay, // Aktualnie zaznaczony dzień
              startingDayOfWeek: taskProvider.settings.calendarStartDay ?? StartingDayOfWeek.monday,
              onDaySelected: taskProvider.onDaySelected,
              //     (selectedDay,focusedDay){
              //   if (!isSameDay(selDay, selectedDay)) {
              //     selDay = selectedDay;
              //     focDay = focusedDay;
              //   }
              //   taskProvider.onDaySelected;
              // },
              onMonthChange: (day) {
                //taskProvider.onMonthChange(day);
              }, // Reakcja na zmianę miesiąca
              calendarFormat: CalendarFormat.week, // Obecny format kalendarza (tydzień/miesiąc)
              onFormatChanged: (format) {
                taskProvider.changeDateFormat(format);
              }, // Zmiana formatu kalendarza
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
              },// Pobieranie wydarzeń dla danego dnia,// Pobieranie wydarzeń dla danego dnia
            ),
            // Calendar(
            //   isHeaderVisible: false,
            //   focDay:,
            //   selDay:,
            //   startingDayOfWeek:,
            //   onDaySelected:,
            //   onMonthChange:,
            //   calendarFormat:,
            //   onFormatChanged:,
            //   taskEvents:,
            // ),
            Expanded(flex: 5, child: TaskList()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: .0),
              child: Divider(
                height: 0.5,
              ),
            ),
            Expanded(
              flex: 2,
              child: NoteList(),
            ),
            SizedBox(
              height: 8.0,
            )
          ],
        ),
      );
    });
  }
}
