import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:noti_2/screens/project_screen/project_creator_screen.dart';
import 'package:provider/provider.dart';
import '../../providers/project_provider.dart';
import '../../providers/settings_provider.dart';
import '../../utils/custom_page_route/custom_page_route.dart';
import '../../utils/dimensions/size_info.dart';
import '../../widgets/cards/project_card.dart';
import '../../widgets/displays/default_text.dart';
import '../../widgets/headers/small_header.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ProjectProvider, SettingsProvider>(
      builder: (context, projectProvider, settingsProvider, child) {
        var edgePadding = SizeInfo.edgePadding;
        if (projectProvider.projectList.isEmpty) {
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
                  'You have ${projectProvider.taskListCounter} project${projectProvider.taskListCounter > 1 ? 's' : ""}',
                ),
              ),
              Expanded(
                child: AnimationLimiter(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: .0),
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    shrinkWrap: true,
                    itemCount: projectProvider.taskListCounter,
                    itemBuilder: (context, index) {
                      final project = projectProvider.projectList[index];
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 300),
                        child: SlideAnimation(
                          verticalOffset: 20.0,
                          child: FadeInAnimation(
                              child: ProjectCard(project: project,
                                edit: () async {
                                  await Navigator.push(
                                      context,
                                      CustomPageRoute(
                                          child: ProjectCreator(
                                            newProject: project,
                                            editEnable: false,
                                          ),
                                          direction: AxisDirection.up));
                                },
                                isDone: (val) {
                              //todo fix it task provider
                              // taskProvider.updateTasks(tasks,
                              //     settingsProvider.isNotification);
                          },)

                              // TaskCard(
                              //     task: tasks,
                              //     isDone: (val) {
                              //       //todo fix it task provider
                              //       // projectProvider.updateTasks(tasks,
                              //       //     settingsProvider.isNotification);
                              //     },
                              //     edit: () async {
                              //       await Navigator.push(
                              //           context,
                              //           CustomPageRoute(
                              //               child: TaskCreator(
                              //                 editEnable: false,
                              //                 newTask: tasks,
                              //               ),
                              //               direction: AxisDirection.up));
                              //     },
                              //     circleFromLeft:
                              //     index % 2 == 0 ? true : false)

                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return  Divider(
                        indent: MediaQuery.of(context).size.width / 3,
                        endIndent: MediaQuery.of(context).size.width / 3,
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
