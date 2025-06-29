import 'package:noti/utils/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/db_model/task.dart';
import '../../models/menu_model/category_icon_list.dart';
import '../../utils/colors/priority_color.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/switch_btn.dart';
import '../responsive/column_row_builder.dart';

class TaskCard extends StatelessWidget {
  const TaskCard(
      {super.key,
      required this.task,
      this.icon = Icons.home,
      this.circleFromLeft = true,
      required this.edit,
      required this.isDone,
      this.heroTag = ''});

  final Task task;
  final IconData icon;
  final bool circleFromLeft;
  final Function()? edit;
  final Function(bool val)? isDone;
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

    double radiusCircularMain = height;

    double taskRingWidth = SizeInfo.taskRingLineWidth;
    double sideDifference = (height / 6) + taskRingWidth ;

    double ringRadiusSize = height + sideDifference ;

    double smallRingRadiusSize = height - sideDifference;

    double iconCircleSize = height - sideDifference;

    double iconSize = SizeInfo.leadingAndTrailingIconSize;

    double sideRadius = (height / 3);

    var contentPadding = SizeInfo.taskContentPadding;

    const textPadding = EdgeInsets.only(left: 6, top: 3, right: 6);

    final marginContainer = circleFromLeft == true
        ? EdgeInsets.only(top: sideDifference / 2, bottom: 0, left: sideDifference / 2 , right: 0)
        :  EdgeInsets.only(top: sideDifference / 2, bottom: 0, left: 0, right: sideDifference / 2 );

    final marginTextBox = circleFromLeft == true
        ?  EdgeInsets.only(top:sideDifference, bottom: sideDifference, left: sideDifference, right: sideDifference / 2)
        :  EdgeInsets.only(top: sideDifference, bottom:sideDifference, right: sideDifference, left: sideDifference / 2);


    final radiusContainer = circleFromLeft == true
        ? BorderRadius.only(
            topLeft: Radius.circular(radiusCircularMain),
            bottomLeft: Radius.circular(radiusCircularMain),
            topRight:  Radius.circular(sideRadius),
            bottomRight:  Radius.circular(sideRadius))
        : BorderRadius.only(
            topLeft:  Radius.circular(sideRadius),
            bottomLeft:  Radius.circular(sideRadius),
            topRight: Radius.circular(radiusCircularMain),
            bottomRight: Radius.circular(radiusCircularMain));

    List<Widget> _items = [
      Padding(
        padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
        child: Container(
          width: iconCircleSize,
          height: iconCircleSize,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              stops: const [0.0, 0.5, 1.0],
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColorLight,
                Theme.of(context).primaryColorDark
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              iconData,//iconPick.iconsList[task.icon].icon,
              size: iconSize,
              color: task.isTaskDone
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ), //avatar
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: circleFromLeft == true
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
                padding: textPadding,
                child: RichText(
                  maxLines: 1,
                  textAlign:
                      circleFromLeft == true ? TextAlign.left : TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      text:circleFromLeft == true ? '${DateFormat('HH:mm').format(task.date)}  ' : task.title.capitalizeFirstLetter(),
                      style: task.isTaskDone ?
                      Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                          fontSize: titleFontSize ):
                      Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(
                          fontSize: titleFontSize,
                          decoration:TextDecoration.none),
                      children: <TextSpan>[
                        TextSpan(text: circleFromLeft == true ? task.title.capitalizeFirstLetter()  : ' ${DateFormat('HH:mm').format(task.date)}',),
                      ]),
                )),
            Expanded(
              child: Padding(
                padding: textPadding,
                child: Text(
                  task.description,
                  textAlign:
                      circleFromLeft == true ? TextAlign.left : TextAlign.right,
                  style: task.isTaskDone ? Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(
                      fontSize: descriptionSize ): Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: descriptionSize),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ), //text
      Padding(
        padding: circleFromLeft == true ? EdgeInsets.only(right: contentPadding,top: contentPadding,bottom: 5.0) : EdgeInsets.only(left: contentPadding,top: contentPadding,bottom: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: circleFromLeft == true
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: textPadding,
              child: RowBuilder(
                key: key,
                itemCount: task.priority,
                itemBuilder: (context, index) {
                  var markerColor = priorityColor(context,task.priority);

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
            Expanded(
              child: SwitchBtn(
                value: task.isTaskDone,
                iconData: Icons.check,
                iconSize: switchBtnIconSize,
                align: circleFromLeft == true
                    ? Alignment.bottomRight
                    : Alignment.bottomLeft,
                onChanged: isDone,
              ),
            ),
          ],
        ),
      ),
    ];

    return GestureDetector(
      key: key,
      onTap: edit,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: height,
            margin: marginContainer,
            decoration: BoxDecoration(
                borderRadius: radiusContainer,
                color: Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.2),

                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Theme.of(context)
                        .unselectedWidgetColor
                        .withValues(alpha: 0.8),
                    offset: const Offset(0.0, 0.0),

                  ),
                  BoxShadow(
                    color: Theme.of(context).shadowColor,
                    offset: const Offset(0.0, 0.0),
                    spreadRadius: -2.0,
                    blurRadius: 2.0,
                  ),
                ]),
          ), //main shape

          Align(
            alignment:
                circleFromLeft == true ? Alignment.topLeft : Alignment.topRight,
            child: Container(
              width: ringRadiusSize,
              height: ringRadiusSize,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    stops: const [0.0, 0.5, 1.0],
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColorLight,
                      Theme.of(context).primaryColorDark
                    ],
                  ),
                  shape: BoxShape.circle,
               ),
            ),
          ), //ring
          Align(
            alignment:
                circleFromLeft == true ? Alignment.topLeft : Alignment.topRight,
            child: Container(
              width: height,
              height: height,
              margin: marginContainer,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.2),
                  boxShadow: [
                BoxShadow(
                  color: Theme.of(context).unselectedWidgetColor,
                  offset: const Offset(0.0, 0.0),
                ),
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  offset: const Offset(0.0, 0.0),
                  spreadRadius: -2.0,
                  blurRadius: 2.0,
                ),
              ]),
            ),
          ), //small ring - inner shadow imitation

          Align(
            alignment:
                circleFromLeft == true ? Alignment.topLeft : Alignment.topRight,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: smallRingRadiusSize,
                margin: marginTextBox,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurface,
                    borderRadius: radiusContainer,
                    boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).unselectedWidgetColor.withValues(alpha: 0.3),
                          blurRadius: 2.0,
                          offset: const Offset(.0, .0),
                          spreadRadius: 1.5),
                    ]),
                child: Row(
                    mainAxisAlignment: circleFromLeft == true
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: circleFromLeft == true
                        ? _items
                        : _items.reversed.toList())),
          ), //title box
        ],
      ),
    );
  }
}
