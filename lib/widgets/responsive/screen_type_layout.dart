import 'package:noti/widgets/responsive/responsive_builder.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensions/screen_type.dart';

class ScreenTypeLayout extends StatelessWidget {
  const ScreenTypeLayout({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      key: key,
      builder: (context, size) {
        if (size.screenType == ScreenType.tablet) {
          if (tablet != null) {
            return tablet!;
          }
        }
        if (size.screenType == ScreenType.desktop) {
          if (desktop != null) {
            return desktop!;
          }
        }
        return mobile!;
      },
    );
  }
}
