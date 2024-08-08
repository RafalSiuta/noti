import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

class SwitchBtn extends StatelessWidget {
  const SwitchBtn({
    super.key,
    this.value,
    this.onChanged,
    required this.icon,
    this.align = Alignment.center,
  });

  final bool? value;
  final ValueChanged<bool>? onChanged;
  final IconData icon;
  final Alignment align;

  @override
  Widget build(BuildContext context) {
    var iconSize = SizeInfo.switchButtonIconSize;
    return IconButton(
        alignment: align,
        onPressed: () {
          onChanged!(value!);
        },
        splashRadius: 10,
        splashColor: Colors.transparent,
        icon: Icon(
          icon,
          size: iconSize,
          color: value == true
              ? Theme.of(context).indicatorColor
              : Theme.of(context).unselectedWidgetColor.withOpacity(0.5),
        ));
  }
}
