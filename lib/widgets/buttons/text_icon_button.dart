import 'package:flutter/material.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';

class IconButtonWithText extends StatelessWidget {
  const IconButtonWithText({
    super.key,
    this.value,
    this.onChanged,
    required this.iconData,
    this.iconSize = 18,
    this.align = Alignment.center,
    this.iconName = "",
    this.padding = EdgeInsets.zero
  });

  final bool? value;
  final ValueChanged<bool>? onChanged;
  final IconData iconData;
  final double iconSize;
  final Alignment align;
  final String iconName;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    var selectedColor = value == true
        ? Theme.of(context).indicatorColor
        : Theme.of(context).unselectedWidgetColor;
    return
      InkWell(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Padding(
          padding: padding,
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
                context.t(iconName),
                //iconName,
                textAlign: TextAlign.center,
                style: Theme.of(context).inputDecorationTheme.helperStyle!.copyWith(
                        color: selectedColor,
                        fontSize: iconSize * 0.52
                    ),)

            ],
          ),
        ),
        onTap: (){
          onChanged!(value!);
        },
      );
  }
}
