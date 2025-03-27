import 'dart:math';
import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../utils/constants/const_values.dart';

class SliverHeader extends SliverPersistentHeaderDelegate {

  final double height;
  final Widget? child;
  final double paddingHorizontal;
  final double paddingVertical;
  final bool isRebuild;

  @override
  double get minExtent => height;
  @override
  double get maxExtent => height;

  SliverHeader(
      {
        required this.height,
      required this.child,
      this.paddingHorizontal = 8.0,
      this.paddingVertical = 0.0,
      this.isRebuild = false});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      child: BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: blurValue, sigmaY: blurValue),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal, vertical: paddingVertical),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
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
