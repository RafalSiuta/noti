import 'package:flutter/material.dart';
import '../../widgets/headers/search_window.dart';
import 'task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        key: key,
        child: Column(
          children:  [
            SearchWindow(),
            Expanded(
              child: TaskList(
                isSearch: true,
              ),
            ),
          ],  ));
  }
}