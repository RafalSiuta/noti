import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../providers/task_provider.dart';
import '../../widgets/headers/date_header.dart';
import '../calendar_screen/calendar.dart';
import '../note_screen/note_list.dart';
import '../task_screen/task_list.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<TaskProvider>(
        builder: (context, taskProvider, child)
    {
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
              focDay: taskProvider.focDay, // Bieżący dzień wybrany w kalendarzu
              selDay: taskProvider.selDay, // Aktualnie zaznaczony dzień
              startingDayOfWeek: taskProvider.settings.calendarStartDay ?? StartingDayOfWeek.monday,
              onDaySelected: taskProvider.onDaySelected,
              onMonthChange: (day) {
                taskProvider.onMonthChange(day);
              }, // Reakcja na zmianę miesiąca
              calendarFormat: CalendarFormat.week, // Obecny format kalendarza (tydzień/miesiąc)
              onFormatChanged: (format) {
                taskProvider.changeDateFormat(format);
              }, // Zmiana formatu kalendarza
              taskEvents: taskProvider.getCalendarValues, // Pobieranie wydarzeń dla danego dnia
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
