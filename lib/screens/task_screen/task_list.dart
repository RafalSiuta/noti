import 'package:noti/screens/task_screen/task_creator_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../providers/task_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/task_card.dart';
import '../../widgets/headers/small_header.dart';
import '../../widgets/text_display/default_text.dart';

class TaskList extends StatelessWidget {

  const TaskList({super.key, this.isSearch = false, this.listType = "base"});

  final bool isSearch;
  final String listType;

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
        if (taskProvider.taskList.isEmpty) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: const DefaultText(
              title: 'There is no assignments\nfor today ',
            ),
          );
        } else {
          return Padding(
            padding:
                EdgeInsets.only(left: edgePadding-2, top: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallHeader(
                  title:
                      'You have $counter task${counter > 1 ? 's' : ""}',
                ),
                AnimationLimiter(
                  child: listType == "base" ? Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 2),
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      shrinkWrap: true,
                      itemCount: counter,
                      itemBuilder: (context, index) {
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
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 7,
                        );
                      },
                    ),
                  ) : SingleChildScrollView(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 2),
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      shrinkWrap: true,
                      itemCount: counter,
                      itemBuilder: (context, index) {
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
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 7,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
