import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../providers/task_provider.dart';
import '../../utils/dimensions/size_info.dart';
import '../task_screen/task_list.dart';
import 'calendar.dart';

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
                    focDay: taskProvider.focDay, // Bieżący dzień wybrany w kalendarzu
                    selDay: taskProvider.selDay, // Aktualnie zaznaczony dzień
                    startingDayOfWeek: taskProvider.settings.calendarStartDay ?? StartingDayOfWeek.monday,
                    onDaySelected: taskProvider.onDaySelected,
                    onMonthChange: (day) {
                      taskProvider.onMonthChange(day);
                    }, // Reakcja na zmianę miesiąca
                    calendarFormat: taskProvider.format, // Obecny format kalendarza (tydzień/miesiąc)
                    onFormatChanged: (format) {
                      taskProvider.changeDateFormat(format);
                    }, // Zmiana formatu kalendarza
                    taskEvents: taskProvider.getCalendarValues, // Pobieranie wydarzeń dla danego dnia
                  ),
                  // Calendar(
                  //   key: key,
                  //   topSpacing: spacingTop,
                  //   isHeaderVisible: true,
                  //   focDay: taskProvider.focDay,
                  //   selDay: ,
                  //   startingDayOfWeek:,
                  //   onDaySelected:,
                  //   onMonthChange:,
                  //   calendarFormat:taskProvider.format,
                  //   onFormatChanged: ,
                  //   taskEvents:,
                  // ),
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
