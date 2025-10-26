import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:noti/screens/task_screen/task_creator_screen.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import 'package:provider/provider.dart';
import '../../providers/task_provider/task_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/task_card.dart';
import '../../widgets/text_display/default_text.dart';


class SliverTaskList extends StatelessWidget {
  const SliverTaskList({this.isSearch = false, this.bottomSpace = 10, super.key});
  final bool isSearch;
  final double bottomSpace;

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
                padding: EdgeInsets.only(left: edgePadding, top: 10, bottom: 10),
                sliver: SliverFillRemaining(
                  hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    DefaultText(
                        title:"headers_text.header_no_tasks",
                        // context.t("headers_text.header_no_tasks").capitalizeFirstLetter()
                        // title: 'There is no assignments\nfor today '
                    ),
                    SizedBox(
                      height: bottomSpace,
                    )
                  ],
                ),)
            );
          }else{
            return SliverPadding(
              padding: EdgeInsets.only(left: edgePadding-2, top: 10, bottom: 10),
              sliver: SliverList.separated(
                key: key,
                itemCount: counter,
                itemBuilder: (context, index){
                  final task = taskList[index];
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: headerDuration,
                    child: SlideAnimation(
                      verticalOffset: 20.0,
                      child: FadeInAnimation(
                          child: TaskCard(
                              task: task,
                              isDone: (val) {
                                taskProvider.updateTasks(task);
                              },
                              edit: () async {
                                await Navigator.push(
                                    context,
                                    CustomPageRoute(
                                        child: TaskCreator(
                                          editEnable: false,
                                          newTask: task,
                                        ),
                                        direction: AxisDirection.up));
                              },
                              circleFromLeft:
                              index % 2 == 0 ? true : false)
                      ),
                    ),
                  );
                },

                separatorBuilder:  (context, index) {
                  return const SizedBox(
                    height: 7,
                  );
                },)

            );
          }
        });
  }
}
