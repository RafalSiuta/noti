import 'package:flutter/material.dart';

class SwitchBtn extends StatelessWidget {
  const SwitchBtn({
    super.key,
    this.value,
    this.onChanged,
    required this.iconData,
    this.iconSize = 18,
    this.align = Alignment.center,
  });

  final bool? value;
  final ValueChanged<bool>? onChanged;
  final IconData iconData;
  final double iconSize;
  final Alignment align;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        alignment: align,
        onPressed: () {

          onChanged!(value!);
        },
        splashRadius: 1,
        splashColor: Colors.transparent,
        disabledColor: Theme.of(context).shadowColor,
        icon: Icon(
          iconData,
          size: iconSize,
          color: value == true
              ? Theme.of(context).indicatorColor
              : Theme.of(context).unselectedWidgetColor,
        ));
  }
}
