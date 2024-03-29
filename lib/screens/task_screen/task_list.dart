
import 'package:flutter/material.dart';
import 'package:noti_2/screens/task_screen/task_creator_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../providers/settings_provider.dart';
import '../../providers/task_provider.dart';
import '../../utils/custom_page_route/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/task_card.dart';
import '../../widgets/displays/default_text.dart';
import '../../widgets/headers/small_header.dart';

class TaskList extends StatelessWidget {
  final bool isGrid;
  const TaskList({Key? key, this.isGrid = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<TaskProvider, SettingsProvider>(
      builder: (context, taskProvider, settingsProvider, child) {
        var edgePadding = SizeInfo.edgePadding;
        if (taskProvider.taskList.isEmpty) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: const DefaultText(
              title: 'Nothing to do ',
            ),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edgePadding,),
                child: SmallHeader(
                  title:
                      'You have ${taskProvider.taskListCounter} task${taskProvider.taskListCounter > 1 ? 's' : ""}',
                ),
              ),
              Expanded(
                child: AnimationLimiter(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    shrinkWrap: true,
                    itemCount: taskProvider.taskListCounter,
                    itemBuilder: (context, index) {
                      final tasks = taskProvider.taskList[index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 300),
                        child: SlideAnimation(
                          verticalOffset: 20.0,
                          child: FadeInAnimation(
                              child: TaskCard(
                                  task: tasks,
                                  isDone: (val) {
                                    //todo fix it task provider
                                    // taskProvider.updateTasks(tasks,
                                    //     settingsProvider.isNotification);
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
              ),
            ],
          );
        }
      },
    );
  }
}
