import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:noti_2/utils/extensions/string_extension.dart';
import '../../model/db_models/task.dart';
import '../../model/menu/category_icon_list.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/switch_btn.dart';
import '../responsive/column_row_builder.dart';
class TaskCard extends StatelessWidget {
  const TaskCard(
      {Key? key,
      required this.task,
      this.icon = Icons.home,
      this.circleFromLeft = true,
      required this.edit,
      required this.isDone,
      this.heroTag = ''})
      : super(key: key);

  final Task task;
  final IconData icon;
  final bool circleFromLeft;
  final Function()? edit;
  final Function(bool val)? isDone;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    var titleSize = SizeInfo.taskCardTitle;
    var descriptionSize = SizeInfo.taskCardDescription;
    var timerSize = SizeInfo.timeCardColor;
    var smallIconSize = SizeInfo.smallIndicatorIconSize;

    CategoryIconsList iconPick = CategoryIconsList();

    var height = SizeInfo.taskCardHeight;
    double radiusCircularMain = height - 35;
    double ringRadiusSize = height + 16;
    double smallRingRadiusSize = height - 17;
    double iconCircleSize = height - 24;
    double iconSize = height - 60;
    const textPadding = EdgeInsets.only(left: 6, top: 3, right: 6);

    final marginContainer = circleFromLeft == true
        ? const EdgeInsets.only(top: 8, bottom: 0, left: 8, right: 0)
        : const EdgeInsets.only(top: 8, bottom: 0, left: 0, right: 8);
    final marginTextBox = circleFromLeft == true
        ? const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 8)
        : const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 8);

    final radiusContainer = circleFromLeft == true
        ? BorderRadius.only(
            topLeft: Radius.circular(radiusCircularMain),
            bottomLeft: Radius.circular(radiusCircularMain),
            topRight: const Radius.circular(20),
            bottomRight: const Radius.circular(20))
        : BorderRadius.only(
            topLeft: const Radius.circular(20),
            bottomLeft: const Radius.circular(20),
            topRight: Radius.circular(radiusCircularMain),
            bottomRight: Radius.circular(radiusCircularMain));

    // final capitalTitle = task.title![0].toUpperCase() +
    //     task.title!.substring(1, task.title!.length);

    List<Widget> _items = [
      Padding(
        padding: const EdgeInsets.all(4.0),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    iconPick.iconsList[task.icon!],
                    size: iconSize,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                    child: Divider(color: Theme.of(context).colorScheme.secondary, height: 4.0,),
                  ),
                  Text('${DateFormat('HH:mm').format(task.date)}  ',textAlign: TextAlign.center, style:Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: timerSize, ))
                ],
              ),
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
                child: Text(task.title!.capitalizeFirstLetter(),
                  style:
                  Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: titleSize,
                  overflow: TextOverflow.ellipsis,
                  decoration: task.isTaskDone!
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),maxLines: 1,)
            ),
            Expanded(
              child: Padding(
                padding: textPadding,
                child: Text(
                  task.isTaskDone!
                      ? "Task Finished. Well done!"
                      : task.description!,
                  textAlign:
                      circleFromLeft == true ? TextAlign.left : TextAlign.right,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: descriptionSize),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ), //text
      Column(
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
              itemCount: task.priority!,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                  child: Icon(
                    Icons.circle,
                    color: task.isTaskDone!
                        ? Theme.of(context).unselectedWidgetColor
                        : Theme.of(context).indicatorColor,
                    size: smallIconSize,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: SwitchBtn(
              value: task.isTaskDone,
              icon: FontAwesomeIcons.check,
              align: circleFromLeft == true
                  ? Alignment.bottomRight
                  : Alignment.bottomLeft,
              onChanged: isDone,
            ),
          ),
        ],
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
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Theme.of(context)
                        .unselectedWidgetColor
                        .withOpacity(0.6),
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
              margin: circleFromLeft == true
                  ? const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0)
                  : const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
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
                  boxShadow: [
                    BoxShadow(
                        color:
              Theme.of(context).primaryColorDark.withOpacity(0.2),
                        // Theme.of(context)
                        //     .unselectedWidgetColor
                        //     .withOpacity(0.2),
                        blurRadius: 2.0,
                        offset: const Offset(.5, .8),
                        spreadRadius: 2.0),
                  ]
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
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: Theme.of(context).unselectedWidgetColor.withOpacity(0.6),
                  offset: const Offset(0.0, 0.0),
                ),
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  offset: const Offset(0.0, 0.0),
                  spreadRadius: -3.0,
                  blurRadius: 3.0,
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
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: radiusContainer,
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Theme.of(context).shadowColor,
                    //       blurRadius: 3.0,
                    //       offset: const Offset(.0, .0),
                    //       spreadRadius: 2.0),
                    // ]
                ),
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
