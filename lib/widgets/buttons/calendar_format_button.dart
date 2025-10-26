import 'package:flutter/material.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utils/dimensions/size_info.dart';


class CalendarFormatButton extends StatelessWidget {
  const CalendarFormatButton({required this.format, required this.onFormatChange, this.textSize = 10, super.key});

  final CalendarFormat format;
  final Function(CalendarFormat) onFormatChange;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    var borderRadius =  SizeInfo.buttonCornerRadius;

    // Lista dostępnych formatów
    final List<CalendarFormat> formats = [
      CalendarFormat.week,
      CalendarFormat.twoWeeks,
      CalendarFormat.month
    ];



    // Znalezienie następnego formatu
    int currentIndex = formats.indexOf(format);
    CalendarFormat nextFormat = formats[(currentIndex + 1) % formats.length];
    String formatName = format.name;

    String getFormat(){
      if(format == CalendarFormat.week){
        formatName = "buttons_text.button_week";
      }else if(format == CalendarFormat.twoWeeks){
        formatName = "buttons_text.button_two_weeks";
      }else{
        formatName = "buttons_text.button_month";
      }
      return formatName;
    }
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        onFormatChange(nextFormat);
        getFormat();
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: Container(
          height: textSize * 2,
          padding: EdgeInsets.symmetric(horizontal: borderRadius * 1.5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Theme.of(context).dialogTheme.titleTextStyle!.color!,
              width: 0.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          child: Center(
            child: Text(
              context.t(getFormat()),
              //getFormat(),
              //format.name,
              style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),
            ),
          ),
        ),
      ),
    );
  }
}

