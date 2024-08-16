import 'package:flutter/material.dart';

import '../task_screen/task_list.dart';
import 'calendar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Calendar(key: key),
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
