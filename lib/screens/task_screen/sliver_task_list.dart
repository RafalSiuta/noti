import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:noti/screens/task_screen/task_creator_screen.dart';
import 'package:provider/provider.dart';

import '../../providers/task_provider/task_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/task_card.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/small_header.dart';


class SliverTaskList extends StatelessWidget {
  const SliverTaskList({this.isSearch = false, super.key});
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          var edgePadding = SizeInfo.edgePadding;
          int counter = isSearch
              ? taskProvider.taskListByKeywordCounter
              : taskProvider.taskListCounter;
          final taskList =
          isSearch ? taskProvider.taskListByKeyword : taskProvider.taskList;

          if(taskList.isEmpty){
            return SliverPadding(
                padding: EdgeInsets.only(left: edgePadding-2, top: 10, bottom: 10),
                sliver: SliverPersistentHeader(
                pinned: true,
                delegate: SliverHeader(
                paddingHorizontal: 8.0,
                maxHeight: 40,
                minHeight: 30,
                child: SmallHeader(
                title: 'There is no assignments\nfor today ',
                ))),

            );
          }else{
            return SliverPadding(
              padding: EdgeInsets.only(left: edgePadding-2, top: 10, bottom: 10),
              sliver: SliverMainAxisGroup(
                  slivers: [
                    SliverPersistentHeader(
                        pinned: true,
                        delegate: SliverHeader(
                            paddingHorizontal: 8.0,
                            paddingVertical: 5.0,
                            maxHeight: 60,
                            minHeight: 55,
                            child: SmallHeader(
                              title: 'You have $counter task${counter > 1 ? 's' : ""}',
                            ))),

                    SliverList.separated(
                      key: key,
                      itemCount: counter,
                      itemBuilder: (context, index){
                        final tasks = taskList[index];
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
                  ]),


            );
          }



        });
  }
}
