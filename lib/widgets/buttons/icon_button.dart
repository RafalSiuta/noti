import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

class IconButtonWithText extends StatelessWidget {
  const IconButtonWithText({
    super.key,
    this.value,
    this.onChanged,
    required this.iconData,
    this.iconSize = 18,
    this.align = Alignment.center,
    this.iconName = ""
  });

  final bool? value;
  final ValueChanged<bool>? onChanged;
  final IconData iconData;
  final double iconSize;
  final Alignment align;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    var selectedColor = value == true
        ? Theme.of(context).indicatorColor
        : Theme.of(context).unselectedWidgetColor;
    return IconButton(
        padding:  EdgeInsets.zero,//only(bottom: 5.0,left: 5.0, right: 5.0),
        alignment: align,
        onPressed: () {

          onChanged!(value!);
        },
        isSelected: value,
        splashRadius: 1,
        splashColor: Colors.transparent,
        disabledColor: Theme.of(context).shadowColor,
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              size: iconSize,
              color: selectedColor
            ),
            const SizedBox(height: 5,),
            Text(iconName, style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: selectedColor,
                fontSize: iconSize * 0.5
            ),)
          ],
        ));
  }
}
