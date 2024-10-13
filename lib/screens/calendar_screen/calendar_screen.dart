import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';
import '../task_screen/task_list.dart';
import 'calendar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var spacingTop = SizeInfo.menuTopMargin;
    return CustomScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Calendar(key: key,topSpacing: spacingTop,),
          ]),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: .0, vertical: 20),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              TaskList(key: key),
            ]),
          ),
        ),
      ],
    );
  }
}
