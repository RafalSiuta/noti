import 'package:flutter/material.dart';
import 'package:noti_2/widgets/themes/style_exports.dart';
import 'package:noti_2/widgets/timeline/timeline_indicator.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../buttons/custom_icon_btn.dart';

class TimelineCard extends StatelessWidget {
  const TimelineCard({this.isStepDone = false, required this.fontSize, required this.icon,required this.isFirst, required this.isLast, super.key});
  final bool isStepDone;
  final double? fontSize;
  final IconData? icon;
  final bool? isFirst;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      child: TimelineTile(
        alignment: TimelineAlign.start,
        isLast: isLast!,
        isFirst: isFirst!,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0,
          drawGap: true,
          width: 30,
          height: 30,
          indicator: TimelineIndicator(iconData: icon,circleSize: 30.0,),
        ),
        afterLineStyle: LineStyle(
          thickness: 1,
          color: isLast! ? Colors.transparent : Theme.of(context).dividerTheme.color!
        ),
        beforeLineStyle: LineStyle(thickness: 1,
            color: Theme.of(context).dividerTheme.color!
        ),
        endChild: Container(
          margin: const EdgeInsets.only(left: 10.0, top: 5.0, bottom: 12.0),
          padding: const EdgeInsets.symmetric( horizontal: 10.0),
          color: Theme.of(context).colorScheme.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Step 1', style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontSize: fontSize,
              overflow: TextOverflow.ellipsis,
              decoration: isStepDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),maxLines: 1,),
              Text('description how to...', style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: fontSize),),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Theme.of(context).unselectedWidgetColor.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: Center(child: CustomIconButton((){
                 //todo add image function _pickIcon(context);
                }, 30, Icons.image,Theme.of(context)
                    .inputDecorationTheme
                    .helperStyle!
                    .copyWith(
                    fontSize: 6.0), "Add image", Theme.of(context).unselectedWidgetColor),),
              )
            ],
          ),
        ),
      ),
    );
  }
}


