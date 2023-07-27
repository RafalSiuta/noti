import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:noti_2/utils/extensions/string_extension.dart';

import '../../model/db_models/project.dart';
import '../../model/menu/category_icon_list.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/switch_btn.dart';
import '../raters/custom_progress_bar.dart';
import '../responsive/column_row_builder.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, this.circleFromLeft = true, required this.project,  required this.isDone, this.edit});

  final bool circleFromLeft;
  final Project project;
  final Function(bool val)? isDone;
  final Function()? edit;

  @override
  Widget build(BuildContext context) {
    var titleSize = 10.0;//SizeInfo.taskCardTitle;
    var subtitleSize = 8.0;//SizeInfo.taskCardTitle;
    var descriptionSize = SizeInfo.taskCardDescription;
    var timerSize = SizeInfo.timeCardColor;
    var smallIconSize = SizeInfo.smallIndicatorIconSize;

    CategoryIconsList iconPick = CategoryIconsList();

    var height = SizeInfo.projectCardHeight;
    double radiusCircularMain = height - 35;
    double ringRadiusSize = height + 16;
    double smallRingRadiusSize = height - 17;
    double iconCircleSize = height - 80;
    double iconSize = 18;
    const textPadding = EdgeInsets.all(3.0);//EdgeInsets.only(left: 6, top: 3, right: 6);
    const descriptionTextPadding = EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0);

    const marginContainer = EdgeInsets.only(top: 8, bottom: 0, left: 8, right: 0);

    // circleFromLeft == true
    //     ? const EdgeInsets.only(top: 8, bottom: 0, left: 8, right: 0)
    //     : const EdgeInsets.only(top: 8, bottom: 0, left: 0, right: 8);


    const marginTextBox = EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 8);

    // circleFromLeft == true
    //     ? const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 8)
    //     : const EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 8);

    const radiusContainer = BorderRadius.all(Radius.circular(20));
    const radiusInnerContainer = BorderRadius.all(Radius.circular(15));
    const radiusAvatarTile = BorderRadius.only(topLeft: Radius.circular(20),bottomRight:Radius.circular(20) );

    // circleFromLeft == true
    //     ? BorderRadius.only(
    //     topLeft: Radius.circular(radiusCircularMain),
    //     bottomLeft: Radius.circular(radiusCircularMain),
    //     topRight: const Radius.circular(20),
    //     bottomRight: const Radius.circular(20))
    //     : BorderRadius.only(
    //     topLeft: const Radius.circular(20),
    //     bottomLeft: const Radius.circular(20),
    //     topRight: Radius.circular(radiusCircularMain),
    //     bottomRight: Radius.circular(radiusCircularMain));
    List<Widget> _items = [

      Expanded(
        flex: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: iconCircleSize - 8,height: iconCircleSize - 8,),
            Padding(
                padding: textPadding,
                child: RichText(

                  text: TextSpan(
                      text: "Deadline\n",
                      style:
                        Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontSize: titleSize,
                            overflow: TextOverflow.ellipsis,
                            decoration: project.isTaskDone!
                                ? TextDecoration.lineThrough
                                : TextDecoration.none),
                      children:<TextSpan>[
                        TextSpan(text: "Friday\n15 Aug 23", style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontSize: subtitleSize,
                            overflow: TextOverflow.ellipsis,
                            decoration: project.isTaskDone!
                                ? TextDecoration.lineThrough
                                : TextDecoration.none),),
                      ]
                  )

                ),

                // Text(project.title!.capitalizeFirstLetter(),
                //   style:
                //   Theme.of(context).textTheme.headlineMedium!.copyWith(
                //       fontSize: titleSize,
                //       decoration: project.isTaskDone!
                //           ? TextDecoration.lineThrough
                //           : TextDecoration.none),maxLines: 2,)
            ),//deadline
            VerticalDivider(indent: 3,endIndent: 15,),
            Expanded(
              child: Padding(
          padding: textPadding,
          child: RichText(
                maxLines: 3,
                text: TextSpan(
                    text: "${project.title!.capitalizeFirstLetter()}\n",

                    style:
                    Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: titleSize,
                        overflow: TextOverflow.ellipsis,
                        decoration: project.isTaskDone!
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                    children:<TextSpan>[
                      TextSpan(
                          text: project.subtitle, style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: subtitleSize,

                          overflow: TextOverflow.ellipsis,
                          decoration: project.isTaskDone!
                              ? TextDecoration.lineThrough
                              : TextDecoration.none),),
                    ]
                )

          ),),
            ), // title
            Padding(
              padding: EdgeInsets.only(right: 10.0, top:3.0),
              child: RowBuilder(
                key: key,
                itemCount: project.priority!,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                    child: Icon(
                      Icons.circle,
                      color: project.isTaskDone!
                          ? Theme.of(context).unselectedWidgetColor
                          : Theme.of(context).indicatorColor,
                      size: smallIconSize,
                    ),
                  );
                },
              ),
            ), //rater
            // Padding(
            //   padding: textPadding,
            //   child: Text(
            //     project.isTaskDone!
            //         ? "Task Finished. Well done!"
            //         : project.description!,
            //     textAlign:
            //     circleFromLeft == true ? TextAlign.left : TextAlign.right,
            //     style: Theme.of(context)
            //         .textTheme
            //         .bodyMedium!
            //         .copyWith(fontSize: descriptionSize),
            //     maxLines: 3,
            //     overflow: TextOverflow.ellipsis,
            //   ),
            // ),
          ],
        ),
      ),
      Expanded(
        flex: 3,
          child: Padding(
        padding: descriptionTextPadding,
        child: Text("${project.description!} Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: subtitleSize,
            overflow: TextOverflow.ellipsis,
            decoration: project.isTaskDone!
                ? TextDecoration.lineThrough
                : TextDecoration.none), maxLines: 3,),
      )),
      CustomProgressBar(progressValue: project.progress!,)

    ];

    return GestureDetector(
      key: key,
      onTap: edit,
      child: Stack(
        children:[
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
        ),//main shape
          Align(
            alignment:
            circleFromLeft == true ? Alignment.topLeft : Alignment.topRight,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: smallRingRadiusSize,
                margin: marginTextBox,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: radiusInnerContainer,
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Theme.of(context).shadowColor,
                  //       blurRadius: 3.0,
                  //       offset: const Offset(.0, .0),
                  //       spreadRadius: 2.0),
                  // ]
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _items)),
          ), //title box
          Align(
            alignment: circleFromLeft == true ? Alignment.topLeft : Alignment.topRight,
            child: Container(
              margin: marginContainer,
              width: iconCircleSize,
              height: iconCircleSize,
              decoration: BoxDecoration(
                borderRadius: radiusAvatarTile,
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
                // shape: BoxShape.circle,
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
                        iconPick.iconsList[project.icon!],
                        size: iconSize,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                        child: Divider(color: Theme.of(context).colorScheme.secondary, height: 4.0,),
                      ),
                      Text('${DateFormat('HH:mm').format(project.date)}  ',textAlign: TextAlign.center, style:Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: timerSize, ))
                    ],
                  ),
                ),
              ),
            ),
          ), //avatar icon tile
      ]
      ),
    ); //main shape
  }
}
