import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/task_search_provider.dart';
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
            SearchWindow(searchProvider: Provider.of<TaskSearchProvider>(context)),
            Expanded(
              child: TaskList(
                isSearch: true,
              ),
            ),
          ],  ));
  }
}