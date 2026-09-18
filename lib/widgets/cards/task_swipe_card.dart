import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:csshadow/csshadow.dart';

import '../../models/db_model/task.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../styles/shapes/task_shape.dart';
import '../../utils/colors/inner_shadow_decoration.dart';
import '../../utils/colors/priority_color.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/extensions/string_extension.dart';
import '../buttons/toogle_check.dart';
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

    var height = SizeInfo.taskCardHeight;

    var taskCardClipper = TaskCardShape(
      switchButtonSide: SizeInfo.toogleButtonSide,
      switchButtonGap: SizeInfo.cardInnerPadding,
    );

    double taskRingWidth = SizeInfo.taskRingLineWidth;
    double sideDifference = (height / SizeInfo.cardInnerPadding) + taskRingWidth;

    final marginContainer = EdgeInsets.only(
      top: 0,
      bottom: 0,
      left: sideDifference / 2,
      right: 0,
    );

    final marginTimerContainer = EdgeInsets.only(left: SizeInfo.cardInnerPadding/2,top: SizeInfo.cardInnerPadding/2,bottom: SizeInfo.cardInnerPadding/2);

    final radiusContainer = BorderRadius.all(Radius.circular(SizeInfo.outherCardCornerRadius));

    final innerRadiusContainer = BorderRadius.all(
      Radius.circular(SizeInfo.innerCardCornerRadius),
    );
    final timerRadiusContainer = BorderRadius.all(
      Radius.circular(SizeInfo.outherCardCornerRadius),
    );

    List<Widget> items = [
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeInfo.taskCardContentPadding,),
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
                padding: EdgeInsets.symmetric(horizontal: SizeInfo.taskCardContentPadding,),
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
              padding: EdgeInsets.symmetric(horizontal: SizeInfo.taskCardContentPadding,),
              child: RowBuilder(
                key: key,
                itemCount: task.priority,
                crossAxisAlignment: CrossAxisAlignment.start,
                itemBuilder: (context, index) {
                  var markerColor = priorityColor(context, task.priority);

                  return Padding(
                    padding: EdgeInsets.only(left: SizeInfo.cardInnerPadding/2, top: SizeInfo.cardInnerPadding/2),
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

        ],
      ),
    ];

    return GestureDetector(
      key: key,
      onTap: edit,
      child: Container(
        height: height,
        margin: EdgeInsets.only(right: 2),
        padding: EdgeInsets.all(SizeInfo.cardInnerPadding/2),
        decoration: BoxDecoration(
          borderRadius: radiusContainer,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        foregroundDecoration: InnerShadowDecoration(
          borderRadius: radiusContainer,
          color: Theme.of(context).shadowColor,//.withValues(alpha: 0.8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: .0,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: SizeInfo.cardInnerPadding),
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
                    color: Theme.of(context).shadowColor,//.withValues(alpha: 0.8),
                    offset: const Offset(0.0, 0.0),
                    spreadRadius: 1.5,
                    blurRadius: 1.5,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8.0,
                children: [
                  Icon(
                    iconData, //iconPick.iconsList[task.icon].icon,
                    size: SizeInfo.leadingAndTrailingIconSize,
                    color: task.isTaskDone
                        ? Theme.of(context).colorScheme.onSecondary
                        : Theme.of(context).colorScheme.secondary,
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      DateFormat('HH:mm').format(task.date),
                      overflow: TextOverflow.fade,
                      style: task.isTaskDone
                          ? Theme.of(context).textTheme.displayMedium!.copyWith(
                              fontSize: titleFontSize,
                              decoration: TextDecoration.none,
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
              child: ClipRRect(
                borderRadius: innerRadiusContainer,
                child: Padding(
                  padding: EdgeInsets.only(right: SizeInfo.cardInnerPadding/2,top: SizeInfo.cardInnerPadding/2,bottom: SizeInfo.cardInnerPadding/2),
                  child: Dismissible(
                    key: ValueKey('task-swipe-card-${task.id}'),
                    direction: DismissDirection.endToStart,
                    resizeDuration: null,
                    movementDuration: const Duration(milliseconds: 180),
                    dismissThresholds: const {DismissDirection.endToStart: 0.4},
                    onDismissed: (_) => delete?.call(),
                    background: const SizedBox.shrink(),
                    secondaryBackground: Container(
                      alignment: Alignment.centerRight,
                      padding: marginContainer,
                      decoration: BoxDecoration(
                        borderRadius: innerRadiusContainer,
                        // color:  Colors.blue, //testing color
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Theme.of(
                              context,
                            ).scaffoldBackgroundColor.withValues(alpha: 0.2),
                            Theme.of(
                              context,
                            ).scaffoldBackgroundColor,
                          ],
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(SizeInfo.taskCardContentPadding),
                          child: Icon(
                            Icons.delete_outline,
                            color: Theme.of(context).unselectedWidgetColor,
                            size: SizeInfo.leadingAndTrailingIconSize,
                          ),
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
                                  color: Theme.of(context).shadowColor,//.withValues(alpha: 0.8),
                                  offset: const Offset(0.0, 0.0),
                                  spreadRadius: 3,
                                  blurRadius: 3,
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
                                        children: items,
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
                              width: SizeInfo.toogleButtonSide,
                              height: SizeInfo.toogleButtonSide,
                              child: ToogleCheck(
                                value: task.isTaskDone,
                                iconData: Icons.check,
                                iconSize: SizeInfo.switchButtonIconSize,
                                align: Alignment.bottomRight,
                                onChanged: isDone,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
