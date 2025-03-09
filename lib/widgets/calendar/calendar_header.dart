import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../utils/dimensions/size_info.dart';
import '../buttons/icon_btn.dart';

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({required this.next, required this.previous,required this.date,this.widget, super.key});

  final VoidCallback next;
  final VoidCallback previous;
  final DateTime date;
  final Widget? widget;

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
            iconColor: Theme.of(context).dialogTheme.titleTextStyle!.color,//Theme.of(context).indicatorColor,
            onPressed: previous,
          ),
          widget != null ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: textSize,
            children: [
              Text(
                DateFormat('MMMM yy').format(date),
                style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),
              ),
              widget!
            ],
          ) : Text(
            DateFormat('MMMM yy').format(date),
            style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),
          ),
          IconBtn(
            icon: Icons.arrow_right,
            iconSize: textSize,
            iconColor:  Theme.of(context).dialogTheme.titleTextStyle!.color,
            onPressed: next,
          ),
        ],
      ),
    );
  }
}
