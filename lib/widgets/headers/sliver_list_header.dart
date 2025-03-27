import 'package:flutter/material.dart';
import 'package:noti/widgets/headers/sliver_header.dart';
import 'package:noti/widgets/headers/small_header.dart';
import 'package:provider/provider.dart';

import '../../providers/task_provider/task_provider.dart';
import '../../utils/dimensions/size_info.dart';

class SliverListHeader extends StatelessWidget {
  const SliverListHeader({this.isSearch = false,super.key});
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          var edgePadding = SizeInfo.edgePadding;
          var headerHeight = SizeInfo.sliverHeaderHeight;
          int counter = isSearch
              ? taskProvider.taskListByKeywordCounter
              : taskProvider.taskListCounter;
          return SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeader(
                  paddingHorizontal: edgePadding,
                  paddingVertical: 5.0,
                  height: headerHeight,
                  isRebuild: true,
                  child: SmallHeader(
                    title: counter == 0 ? "" : 'You have $counter task${counter > 1 ? 's' : ""}',
                  )));
        });
        }}


