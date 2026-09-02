import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';

class SliverHeader extends SliverPersistentHeaderDelegate {

  /// The resolved sliver extent. It is optional so ordinary, one-line headers
  /// can use the standard header height without repeating it at every call site.
  ///
  /// A [SliverPersistentHeaderDelegate] cannot derive its extent directly from
  /// [child] during layout. For content whose height changes, calculate it from
  /// the content (for example with [TextPainter]) and provide it here.
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
      this.height = 70,//SizeInfo.sliverHeaderHeight,
      required this.child,
      this.paddingHorizontal = 8.0,
      this.paddingVertical = 0.0,
      this.isRebuild = true});

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
    return isRebuild ||
        height != oldDelegate.height ||
        child != oldDelegate.child ||
        paddingHorizontal != oldDelegate.paddingHorizontal ||
        paddingVertical != oldDelegate.paddingVertical;
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
