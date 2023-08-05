import 'package:flutter/material.dart';

class TimelineIndicator extends StatelessWidget {
  const TimelineIndicator({
    Key? key,
    this.iconData,
    required this.circleSize
  }) : super(key: key);

  final IconData? iconData;
  final double? circleSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border: Border.all(color: Theme.of(context).dividerTheme.color!, width: 0.5)

          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: circleSize,
              width: circleSize,
              child: Icon(
                iconData,
                size: circleSize! - 10,
                color: Theme.of(context).indicatorColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}