import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';
import '../buttons/icon_btn.dart';

class ExpandableHeader extends StatelessWidget {
  const ExpandableHeader({this.title = "", required this.onTap, this.isExpanded = true,
    //this.icon = Icons.arrow_drop_down_outlined,
    this.padding = EdgeInsets.zero, super.key});

  final VoidCallback onTap;
  final String title;
  final bool isExpanded;
  //final IconData icon;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    var pickerSubtitle = SizeInfo.calendarDaySize;
    var baseColor = Theme.of(context).textTheme.headlineMedium!.color;
    var selectedColor = Theme.of(context).indicatorColor;
    var iconSize = SizeInfo.headerSubtitleSize;

    return GestureDetector(
      onTap:onTap,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(
              height: 1.5,
              fontSize:pickerSubtitle,
              color: baseColor,
            ),),
            IconBtn(
              icon: isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down_outlined,
              iconSize: iconSize,
              iconColor: isExpanded ? selectedColor : baseColor,
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
