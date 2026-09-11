import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

class ToogleCheck extends StatelessWidget {
  const ToogleCheck({
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
                borderRadius: BorderRadius.all(Radius.circular(SizeInfo.innerCardCornerRadius)),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).shadowColor,
                    offset: const Offset(0.0, 0.0),
                    spreadRadius: 1,
                    blurRadius: 1.5,
                  ),
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

  }
}
