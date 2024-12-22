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
    return
      InkWell(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  Icon(
                    iconData,
                    size: iconSize,
                    color: selectedColor
                  ),
            const SizedBox(
              height: 7,
            ),
            Text(
              iconName,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: selectedColor,
                      fontWeight: FontWeight.bold,
                      fontSize: iconSize * 0.5
                  ),)

          ],
        ),
        onTap: (){
          onChanged!(value!);
        },
      );
  }
}
