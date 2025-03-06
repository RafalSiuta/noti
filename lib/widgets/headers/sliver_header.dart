import 'dart:math';
import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliverHeader extends SliverPersistentHeaderDelegate {
  final double? minHeight;
  final double? maxHeight;
  final Widget? child;
  final double paddingHorizontal;
  final double paddingVertical;
  final bool isRebuild;

  @override
  double get minExtent => minHeight!;
  @override
  double get maxExtent => math.max(maxHeight!, minHeight!);

  SliverHeader(
      {required this.minHeight,
      required this.maxHeight,
      required this.child,
      this.paddingHorizontal = 8.0,
      this.paddingVertical = 0.0,
      this.isRebuild = false});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: blur(shrinkOffset), sigmaY: blur(shrinkOffset)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(), child: child),
            ],
          ),
        ),
      ),
    );
  }

  double blur(double shrinkOffset) {
    return 0.0 + min(3.0, shrinkOffset);
  }

  @override
  bool shouldRebuild(SliverHeader oldDelegate) {
    return isRebuild ;
  }

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  // TODO: implement showOnScreenConfiguration
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  // TODO: implement vsync
  TickerProvider? get vsync => null;
}
