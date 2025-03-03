import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../utils/dimensions/size_info.dart';
import '../buttons/icon_btn.dart';

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({required this.next, required this.previous,required this.date, super.key});

  final VoidCallback next;
  final VoidCallback previous;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    var textSize = SizeInfo.headerSubtitleSize;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: textSize * 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconBtn(
            icon: Icons.arrow_left,
            iconSize: textSize,
            iconColor: Theme.of(context).indicatorColor,
            onPressed: next,
          ),
          // IconButton(
          //     splashColor: Colors.transparent,
          //     onPressed: next,
          //     icon: Icon(
          //       Icons.arrow_left,
          //       size: textSize,
          //     )),
          Text(
            DateFormat('MMMM yy').format(date),
            style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),
          ),
          IconBtn(
            icon: Icons.arrow_right,
            iconSize: textSize,
            iconColor: Theme.of(context).indicatorColor,
            onPressed: previous,
          ),
          // IconButton(
          //     splashColor: Colors.transparent,
          //     onPressed: previous,
          //     icon: Icon(
          //       Icons.arrow_right,
          //       size: textSize,
          //     )),
        ],
      ),
    );
  }
}
