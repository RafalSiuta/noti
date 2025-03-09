import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../models/db_model/task.dart';
import 'package:noti/providers/task_provider/task_provider.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/customPageRoute/custom_page_route.dart';
import '../../widgets/calendar/sliver_calendar_wrapper.dart';
import '../../widgets/calendar/small_calendar.dart';
import '../../widgets/headers/date_header.dart';
import '../../widgets/calendar/calendar.dart';
import '../../widgets/headers/sliver_header.dart';
import '../../widgets/headers/sliver_list_header.dart';
import '../note_screen/note_list.dart';
import '../note_screen/sliver_note_list.dart';
import '../task_screen/sliver_task_list.dart';
import '../task_screen/task_creator_screen.dart';
import '../task_screen/task_list.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    WidgetsBinding.instance.addPostFrameCallback((_) {
      final taskProvider = Provider.of<TaskProvider>(context, listen: false);
      taskProvider.onDaySelected(DateTime.now(), DateTime.now());
    });
    return Stack(
        alignment: Alignment.topLeft,
        fit: StackFit.expand,
        children:[
          CustomScrollView(
            key: key,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverPersistentHeader(
                  pinned: true,
                  floating: true,
                  delegate: SliverHeader(
                    paddingHorizontal: .0,
                    maxHeight: 80,
                    minHeight: 75,
                    child:const DateHeader(),
                  )
              ),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverCalendarWrapper(
                    paddingHorizontal: .0,
                    // paddingVertical: 5.0,
                    maxHeight: 100,
                    minHeight: 95,
                    isRebuild: false,
                    child:SmallCalendar()
                  )
              ),
              SliverListHeader(),
              SliverTaskList(
                bottomSpace: MediaQuery.of(context).size.height / 3.5,
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height:  MediaQuery.of(context).size.height / 3.7,
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX:intensiveBlurValue, sigmaY:intensiveBlurValue),
                child: Container(
                    height: MediaQuery.of(context).size.height / 3.9,
                    margin: EdgeInsets.only(bottom: 10),
                    child: NoteList()),
              ),
            ),
          )
        ]
    );
  }
}
