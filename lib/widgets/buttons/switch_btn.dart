import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

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
    var borderRadius = SizeInfo.buttonCornerRadius;
    return
      AspectRatio(
        aspectRatio: 2/2,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {

              onChanged!(value!);
            },
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurface,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).unselectedWidgetColor.withValues(alpha: 0.3),
                      blurRadius: 2.0,
                      offset: const Offset(.0, .0),
                      spreadRadius: 1.5),
                ]
            ),
            child: Icon(
              iconData,
              size: iconSize,
              color: value == true
                  ? Theme.of(context).indicatorColor
                  : Theme.of(context).unselectedWidgetColor,
            ),
          ),
        ),
      );
      // IconButton(
      //   padding: EdgeInsets.zero,
      //   alignment: align,
      //   onPressed: () {
      //
      //     onChanged!(value!);
      //   },
      //     style: IconButton.styleFrom(backgroundColor: Colors.redAccent),
      //   splashRadius: 1,
      //   splashColor: Colors.transparent,
      //   disabledColor: Theme.of(context).shadowColor,
      //   icon: Icon(
      //     iconData,
      //     size: iconSize,
      //     color: value == true
      //         ? Theme.of(context).indicatorColor
      //         : Theme.of(context).unselectedWidgetColor,
      //   ));
  }
}
