import 'package:flutter/material.dart';
import '../../utils/dimensions/size_info.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({this.isSelected = false,required this.date,required this.onPressed,this.title = '', super.key});

  final bool isSelected;
  final String date;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    var pickerSubtitle = SizeInfo.calendarDaySize;
    var baseColor = Theme.of(context).textTheme.headlineMedium!.color;
    var selectedDateColor = Theme.of(context).indicatorColor;
    var borderRadius = SizeInfo.buttonCornerRadius;
    return TextButton(
        style: ButtonStyle(
            shape:WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ) ,
            side: WidgetStateProperty.all(BorderSide(
              width: 0.5,
              color: isSelected ? selectedDateColor : baseColor!,
            ))
        ),
        onPressed: onPressed, child: RichText(
      text: TextSpan(
          text: title,
          style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
            color: isSelected ? selectedDateColor : baseColor!,
          ),
          children: <TextSpan>[
            TextSpan(
              text: date,
              style: Theme.of(context).textTheme
                  .headlineMedium!
                  .copyWith(
                  height: 1.5,
                  color: isSelected ? selectedDateColor : baseColor,
                  fontSize:pickerSubtitle),

            )
          ]
      ),
    ));
  }
}
