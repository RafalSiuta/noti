import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import 'package:noti/screens/task_screen/sliver_task_list.dart';
import 'package:noti/screens/task_screen/task_creator_screen.dart';
import 'package:provider/provider.dart';
import '../../providers/task_provider/task_search_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../widgets/cards/task_card.dart';
import '../../widgets/headers/search_window.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/sliver_list_header.dart';
import '../../widgets/headers/small_header.dart';
import 'task_list.dart';

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
      // Container(
      //     key: key,
      //     child: Column(
      //       children:  [
      //         SearchWindow(searchProvider: Provider.of<TaskSearchProvider>(context)),
      //         Expanded(
      //           child: TaskList(
      //             isSearch: true,
      //           ),
      //         ),
      //       ],  ));
  }
}