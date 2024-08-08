import 'package:flutter/material.dart';
import '../../widgets/headers/date_header.dart';
import '../calendar_screen/calendar.dart';
import '../note_screen/note_list.dart';
import '../task_screen/task_list.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        key: key,
        children: const [
          DateHeader(),
          Calendar(
            isHeaderVisible: false,
          ),
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
  }
}
