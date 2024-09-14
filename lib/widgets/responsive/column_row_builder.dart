import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../utils/constans/durations.dart';

class ColumnBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final int itemCount;

  const ColumnBuilder({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.verticalDirection = VerticalDirection.down,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
        child: Column(
      children: AnimationConfiguration.toStaggeredList(
        duration: headerDuration,
        childAnimationBuilder: (widget) => ScaleAnimation(
          scale: scaleStartValue,
          child: FadeInAnimation(child: widget),
        ),
        children:
            List.generate(itemCount, (index) => itemBuilder(context, index))
                .toList(),
      ),
    ));
  }
}

class RowBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final int itemCount;

  const RowBuilder({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
        child: Row(
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: AnimationConfiguration.toStaggeredList(
        duration: headerDuration,
        childAnimationBuilder: (widget) => ScaleAnimation(
          scale: scaleStartValue,
          child: FadeInAnimation(child: widget),
        ),
        children:
            List.generate(itemCount, (index) => itemBuilder(context, index))
                .toList(),
      ),
    ));
  }
}
