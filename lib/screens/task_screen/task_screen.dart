import 'package:flutter/material.dart';
import 'package:noti/screens/task_screen/sliver_task_list.dart';
import 'package:provider/provider.dart';
import '../../providers/task_provider/task_search_provider.dart';
import '../../widgets/headers/search_window.dart';
import '../../widgets/headers/sliver_list_header.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        key: key,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverToBoxAdapter(
            child: SearchWindow(
              key: key,
              searchProvider: Provider.of<TaskSearchProvider>(context),
              searchType: "task",
            ),
          ),
          SliverListHeader(
            isSearch: true,
          ),
          SliverTaskList(
            isSearch: true,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10.0,
            ),
          )
        ]
    );
  }
}