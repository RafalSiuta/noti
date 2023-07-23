import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(this.onTap, this.iconSize, this.icon, this.textStyle, this.text,this.iconColor, {super.key});

  final VoidCallback? onTap;
  final double? iconSize;
  final IconData? icon;
  final TextStyle? textStyle;
  final String? text;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.grey.withOpacity(0.2),
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),
            Text(text!,style: textStyle ),
          ],
        ),
      ),);
  }
}
