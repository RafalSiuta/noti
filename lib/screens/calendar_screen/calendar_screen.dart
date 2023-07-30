import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:intl/intl.dart';
import 'package:noti_2/screens/calendar_screen/calendar.dart';

import '../../widgets/cards/calendar_card.dart';
import '../../widgets/navigators/tab_nav.dart';
import '../note_screen/note_list.dart';
import '../task_screen/task_list.dart';



class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return
    //   Column(
    //   children: [
    //     Expanded(child: Calendar(fillViewPrort: true,isHeaderVisible: true,)),
    //     Expanded(
    //       child: ListView.builder(itemBuilder: (context, index){
    //       return Text("${DateTime.now().month + index}");
    //     }),)
    //   ],
    // );

      CustomScrollView(
      physics:
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        // SliverList(delegate: SliverChildListDelegate(
        //   [
        //
        //   ]
        // )),
        // SliverAppBar(
        //   pinned: true,
        //   backgroundColor: Colors.transparent,
        //   foregroundColor: Colors.transparent,
        //   shadowColor: Colors.transparent,
        //   elevation: 0,
        //   expandedHeight: MediaQuery.of(context).size.height/2,
        //   flexibleSpace: Calendar(fillViewPort: false,isHeaderVisible: true,)
        // ),
        SliverList(
        delegate: SliverChildListDelegate([
          Calendar(fillViewPort: false,isHeaderVisible: true,)
        ])),
        SliverList(
          delegate: SliverChildListDelegate([

            SizedBox(
                height: MediaQuery.of(context).size.height,
                child: AnimationLimiter(
                  child: GridView.count(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection:Axis.vertical,
                      crossAxisSpacing: 0.0,
                      shrinkWrap: true,
                      mainAxisSpacing: 0.0,
                      crossAxisCount: 2,
                      childAspectRatio: 2.3 / 3,
                      children: List.generate(12, (index) {
                       // final note = noteList[index];
                        return AnimationConfiguration.staggeredGrid(
                          columnCount: 2,
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: ScaleAnimation(
                            scale: 0.5,
                            child: FadeInAnimation(
                                child: Transform.scale(
                                    scale: 0.9,
                                    child: CalendarCard(date: DateTime(2023, index, ),)
                                )),
                          ),
                        );
                      })),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),child: Divider(),
            )

          ]),
        ),
      ],
    );
  }
}
