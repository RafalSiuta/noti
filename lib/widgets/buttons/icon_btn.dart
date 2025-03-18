import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({required this.onPressed, required this.icon, this.iconSize = 10, this.iconColor, super.key});
  final VoidCallback onPressed;
  final IconData icon;
  final double iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    var borderRadius = 5.0;
    return
      InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap:onPressed,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))
          ),
          child: Padding(
            padding: EdgeInsets.all(borderRadius),
            child: Container(
              width: iconSize * 1.5,
              height: iconSize * 1.5,
              decoration: BoxDecoration(
                  //color: Theme.of(context).scaffoldBackgroundColor,
                shape: BoxShape.rectangle,
                border: Border.all(color: iconColor!,width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(borderRadius))
              ),
              child: Icon(icon, size: iconSize,color: iconColor,),
            ),
          ),
        ),
      );
  }
}
