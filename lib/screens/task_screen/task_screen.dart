import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import 'package:noti/screens/task_screen/task_creator_screen.dart';
import 'package:provider/provider.dart';
import '../../providers/task_provider/task_search_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../widgets/cards/task_card.dart';
import '../../widgets/headers/search_window.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';
import 'task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Consumer<TaskProvider>(
        builder: (context,taskProvider,child){
          int counter = taskProvider.taskListByKeywordCounter;
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

                SliverPadding(
                  key: key,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  sliver: SliverPersistentHeader(
                      pinned: true,
                      delegate: SliverHeader(
                          paddingHorizontal: 8.0,
                          maxHeight: 40,
                          minHeight: 30,
                          child: SmallHeader(
                            title: 'You have $counter task${counter > 1 ? 's' : ""}',
                          ))),
                ),
                SliverList.separated(
                  key: key,
                  itemCount: counter,
                  itemBuilder: (context, index){
                    final tasks = taskProvider.taskListByKeyword[index];
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: headerDuration,
                      child: SlideAnimation(
                        verticalOffset: 20.0,
                        child: FadeInAnimation(
                            child: TaskCard(
                                task: tasks,
                                isDone: (val) {
                                  taskProvider.updateTasks(tasks);
                                },
                                edit: () async {
                                  await Navigator.push(
                                      context,
                                      CustomPageRoute(
                                          child: TaskCreator(
                                            editEnable: false,
                                            newTask: tasks,
                                          ),
                                          direction: AxisDirection.up));
                                },
                                circleFromLeft:
                                index % 2 == 0 ? true : false)),
                      ),
                    );
                  },

                  separatorBuilder:  (context, index) {
                    return const SizedBox(
                      height: 7,
                    );
                  },)
              ]
          );
        },
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