import 'package:flutter/material.dart';
import 'package:noti/screens/task_screen/task_creator_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../providers/settings_provider.dart';
import '../../providers/task_provider.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/task_card.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/text_display/default_text.dart';

class TaskList extends StatelessWidget {
  final bool isGrid;
  const TaskList({super.key, this.isGrid = false});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
        var edgePadding = SizeInfo.edgePadding;
        if (taskProvider.taskList.isEmpty) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: const DefaultText(
              title: 'There is no assignments\nfor today ',
            ),
          );
        } else {
          return SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: edgePadding, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallHeader(
                    title:
                        'You have ${taskProvider.taskListCounter} task${taskProvider.taskListCounter > 1 ? 's' : ""}',
                  ),
                  AnimationLimiter(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      shrinkWrap: true,
                      itemCount: taskProvider.taskListCounter,
                      itemBuilder: (context, index) {
                        final tasks = taskProvider.taskList[index];
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            verticalOffset: 44.0,
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
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 7,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
