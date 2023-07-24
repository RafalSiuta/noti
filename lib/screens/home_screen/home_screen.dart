import 'package:flutter/material.dart';
import 'package:noti_2/providers/home_provider.dart';
import 'package:noti_2/screens/calendar_screen/calendar.dart';
import 'package:noti_2/widgets/headers/date_header.dart';
import 'package:noti_2/widgets/headers/sliver_header.dart';
import 'package:provider/provider.dart';
import '../../widgets/navigators/tab_nav.dart';
import '../note_screen/note_list.dart';
import '../project_screen/project_list.dart';
import '../task_screen/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeProvider, child){
        return
        //   CustomScrollView(
        //   physics: const BouncingScrollPhysics(
        //       parent: AlwaysScrollableScrollPhysics()),
        //   slivers: [
        //
        //   ],
        // );

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DateHeader(),
              Calendar(isHeaderVisible: false,),
              Expanded(
                  flex: 5,
                  child: TabNav([TaskList(),NoteList(isGrid: true,),ProjectList()])),

            ],
          );
      }
    );
  }
}
