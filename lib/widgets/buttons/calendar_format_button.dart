import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarFormatButton extends StatelessWidget {
  const CalendarFormatButton({required this.format,
    required this.onFormatChange, this.textSize = 10, super.key});

  final CalendarFormat format;
  final Function(CalendarFormat) onFormatChange;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    var borderRadius = 5.0;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap:(){
        onFormatChange(format);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))
        ),
        child: Container(

          padding: EdgeInsets.symmetric( horizontal: 5.0),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Theme.of(context).dialogTheme.titleTextStyle!.color!,width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))
          ),
          child: Center(child: Text(format.name,style: Theme.of(context).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize),)),
        ),
      ),
    );
  }
}
