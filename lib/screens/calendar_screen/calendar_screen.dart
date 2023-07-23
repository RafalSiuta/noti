import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:noti_2/screens/calendar_screen/calendar.dart';

import '../../widgets/navigators/tab_nav.dart';
import '../note_screen/note_list.dart';
import '../task_screen/task_list.dart';



class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics:
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Calendar(),
            Container(
                height: 800,
                child: TabNav([TaskList(),NoteList(isGrid: true,),TaskList()])),

          ]),
        ),
      ],
    );
  }
}
