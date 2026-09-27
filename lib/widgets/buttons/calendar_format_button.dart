import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utils/custom_icon_helper/noti_system_icons_icons.dart';
import '../../utils/dimensions/size_info.dart';

class CalendarFormatButton extends StatelessWidget {
  const CalendarFormatButton({
    required this.format,
    required this.onFormatChange,
    this.textSize = 10,
    super.key,
  });

  final CalendarFormat format;
  final Function(CalendarFormat) onFormatChange;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    final List<CalendarFormat> formats = [
      CalendarFormat.week,
      CalendarFormat.twoWeeks,
      CalendarFormat.month,
    ];

    int currentIndex = formats.indexOf(format);
    CalendarFormat nextFormat = formats[(currentIndex + 1) % formats.length];
    IconData icon = NotiSystemIcons.month;

    IconData getFormat() {
      if (format == CalendarFormat.week) {
        icon = NotiSystemIcons.oneweek;
      } else if (format == CalendarFormat.twoWeeks) {
        icon = NotiSystemIcons.twooweeks;
      } else {
        icon = NotiSystemIcons.month;
      }
      return icon;
    }

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        onFormatChange(nextFormat);
        getFormat();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: SizeInfo.cardInnerPadding),

        child: Center(
          child: Icon(
            getFormat(),
            color: Theme.of(context).dialogTheme.titleTextStyle!.color!,
          ),
        ),
      ),
    );
  }
}
