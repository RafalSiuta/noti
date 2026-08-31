import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:csshadow/csshadow.dart';

import '../../models/db_model/task.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../styles/shapes/task_shape.dart';
import '../../utils/colors/priority_color.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/extensions/string_extension.dart';
import '../buttons/switch_btn.dart';
import '../responsive/column_row_builder.dart';

class TaskSwipeCard extends StatelessWidget {
  const TaskSwipeCard({
    super.key,
    required this.task,
    this.icon = Icons.home,
    this.circleFromLeft = true,
    required this.edit,
    required this.isDone,
    required this.delete,
    this.heroTag = '',
  });

  final Task task;
  final IconData icon;
  final bool circleFromLeft;
  final Function()? edit;
  final Function(bool val)? isDone;
  final Function()? delete;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    var titleFontSize = SizeInfo.taskCardTitle;
    var descriptionSize = SizeInfo.taskCardDescription;

    var smallIconSize = SizeInfo.smallIndicatorIconSize;

    CategoryIconsList iconPick = CategoryIconsList();

    IconData iconData = iconPick.getPickedIcon(task.icon).icon;

    var switchBtnIconSize = SizeInfo.switchButtonIconSize;
    var height = SizeInfo.taskCardHeight;
    const switchButtonSide = 28.0;
    const switchButtonGap = 6.0;
    const taskCardClipper = TaskCardShape(
      switchButtonSide: switchButtonSide,
      switchButtonGap: switchButtonGap,
    );

    double radiusCircularMain = height;

    double taskRingWidth = SizeInfo.taskRingLineWidth;
    double sideDifference = (height / 6) + taskRingWidth;

    double ringRadiusSize = height + sideDifference;

    double smallRingRadiusSize = height - sideDifference;

    double iconCircleSize = height - sideDifference;

    double iconSize = SizeInfo.leadingAndTrailingIconSize;

    double sideRadius = 8.0; //(height / 5);

    const textPadding = EdgeInsets.symmetric(horizontal: 10);

    final marginContainer = EdgeInsets.only(
      top: 0,
      bottom: 0,
      left: sideDifference / 2,
      right: 0,
    );

    final marginTimerContainer = EdgeInsets.only(left: 0);

    final marginTextBox = EdgeInsets.only(
      top: sideDifference,
      bottom: sideDifference,
      left: sideDifference,
      right: sideDifference / 2,
    );

    final radiusContainer = BorderRadius.all(Radius.circular(sideRadius));

    final innerRadiusContainer = BorderRadius.all(
      Radius.circular(sideRadius - 2),
    );
    final timerRadiusContainer = BorderRadius.all(
      Radius.circular(sideRadius - 2),
    );

    // circleFromLeft == true
    //     ? BorderRadius.only(
    //     topLeft: Radius.circular(radiusCircularMain),
    //     bottomLeft: Radius.circular(radiusCircularMain),
    //     topRight:  Radius.circular(sideRadius),
    //     bottomRight:  Radius.circular(sideRadius))
    //     : BorderRadius.only(
    //     topLeft:  Radius.circular(sideRadius),
    //     bottomLeft:  Radius.circular(sideRadius),
    //     topRight: Radius.circular(radiusCircularMain),
    //     bottomRight: Radius.circular(radiusCircularMain));

    List<Widget> _items = [
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: textPadding,
              child: Text(
                task.title.capitalizeFirstLetter(),
                maxLines: 1,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,

                style: task.isTaskDone
                    ? Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: titleFontSize,
                      )
                    : Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: titleFontSize,
                        decoration: TextDecoration.none,
                      ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: textPadding,
                child: Text(
                  task.description,
                  textAlign: TextAlign.left,
                  style: task.isTaskDone
                      ? Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: descriptionSize,
                        )
                      : Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: descriptionSize,
                        ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ), //text
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: textPadding,
              child: RowBuilder(
                key: key,
                itemCount: task.priority,
                crossAxisAlignment: CrossAxisAlignment.start,
                itemBuilder: (context, index) {
                  var markerColor = priorityColor(context, task.priority);

                  return Padding(
                    padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                    child: Icon(
                      Icons.circle,
                      color: task.isTaskDone
                          ? Theme.of(context).unselectedWidgetColor
                          : markerColor,
                      size: smallIconSize,
                    ),
                  );
                },
              ),
            ),
          ),
          // Expanded(
          //   child: SwitchBtn(
          //     value: task.isTaskDone,
          //     iconData: Icons.check,
          //     iconSize: switchBtnIconSize,
          //     align: Alignment.bottomRight,
          //     onChanged: isDone,
          //   ),
          // ),
        ],
      ),
    ];

    return GestureDetector(
      key: key,
      onTap: edit,
      child: Container(
        height: height,
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: radiusContainer,
          color: Theme.of(
            context,
          ).scaffoldBackgroundColor.withValues(alpha: 0.2),

          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(
                context,
              ).unselectedWidgetColor.withValues(alpha: 0.8),
              offset: const Offset(0.0, 0.0),
            ),
            BoxShadow(
              color: Theme.of(context).shadowColor,
              offset: const Offset(0.0, 0.0),
              spreadRadius: -1.0,
              blurRadius: 1.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: .0,
          children: [
            Container(
              // width: 15,
              // height: height,
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              margin: marginTimerContainer,
              decoration: BoxDecoration(
                borderRadius: innerRadiusContainer,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  stops: const [0.0, 0.5, 1.0],
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColorLight,
                    Theme.of(context).primaryColorDark,
                  ],
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Theme.of(
                      context,
                    ).unselectedWidgetColor.withValues(alpha: 0.3),
                    blurRadius: 2.0,
                    offset: const Offset(.0, .0),
                    spreadRadius: 1.5,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 4.0,
                children: [
                  Icon(
                    iconData, //iconPick.iconsList[task.icon].icon,
                    size: iconSize,
                    color: task.isTaskDone
                        ? Theme.of(context).colorScheme.onSecondary
                        : Theme.of(context).colorScheme.secondary,
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      DateFormat('HH:mm').format(task.date),
                      style: task.isTaskDone
                          ? Theme.of(context).textTheme.displayMedium!.copyWith(
                              fontSize: titleFontSize,
                              color: task.isTaskDone
                                  ? Theme.of(context).colorScheme.onSecondary
                                  : Theme.of(context).colorScheme.secondary,
                            )
                          : Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: titleFontSize,
                              decoration: TextDecoration.none,
                              color: task.isTaskDone
                                  ? Theme.of(context).colorScheme.onSecondary
                                  : Theme.of(context).colorScheme.secondary,
                            ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ), //timer container
            Expanded(
              child: Dismissible(
                key: ValueKey('task-swipe-card-${task.id}'),
                direction: DismissDirection.endToStart,
                resizeDuration: const Duration(milliseconds: 220),
                movementDuration: const Duration(milliseconds: 180),
                dismissThresholds: const {DismissDirection.endToStart: 0.35},
                onDismissed: (_) => delete?.call(),
                background: const SizedBox.shrink(),
                secondaryBackground: Padding(
                  padding: marginContainer,
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 14),
                    decoration: BoxDecoration(
                      borderRadius: innerRadiusContainer,
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Theme.of(
                            context,
                          ).colorScheme.error.withValues(alpha: 0.10),
                          Theme.of(context).colorScheme.error,
                        ],
                      ),
                    ),
                    child: Icon(
                      Icons.delete_outline,
                      color: Theme.of(context).colorScheme.onError,
                      size: iconSize,
                    ),
                  ),
                ),
                child: SizedBox.expand(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned.fill(
                        child: Padding(
                          padding: marginContainer,
                          child: CsShadow(
                            shadow: BoxShadow(
                              color: Theme.of(
                                context,
                              ).shadowColor.withValues(alpha: 0.25),
                              blurRadius: 1.5,
                              offset: Offset.zero,
                            ),
                            clipper: taskCardClipper,
                            child: ClipPath(
                              clipBehavior: Clip.hardEdge,
                              clipper: taskCardClipper,
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: Theme.of(context).colorScheme.onSurface,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: _items,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: SizedBox(
                          width: switchButtonSide,
                          height: switchButtonSide,
                          child: SwitchBtn(
                            value: task.isTaskDone,
                            iconData: Icons.check,
                            iconSize: switchBtnIconSize,
                            align: Alignment.bottomRight,
                            onChanged: isDone,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ), // title box
            ), // card content
          ],
        ),
      ),
    );
  }
}
