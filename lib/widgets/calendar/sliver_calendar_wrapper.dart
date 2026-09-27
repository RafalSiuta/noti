import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliverCalendarWrapper extends SliverPersistentHeaderDelegate {
  final double height;
  final Widget? child;
  final bool isRebuild;

  @override
  double get minExtent => height;
  @override
  double get maxExtent => height;

  SliverCalendarWrapper({
    required this.height,
    required this.child,
    this.isRebuild = false,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: child,
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverCalendarWrapper oldDelegate) {
    return isRebuild;
  }

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  TickerProvider? get vsync => null;
}
