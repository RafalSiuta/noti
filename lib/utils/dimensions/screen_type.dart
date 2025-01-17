import 'package:flutter/widgets.dart';

enum ScreenType { smallMobile, mobile, tablet, desktop }

ScreenType getScreenType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.shortestSide;

  if (deviceWidth > 950) {
    return ScreenType.desktop;
  }

  if (deviceWidth > 600) {
    return ScreenType.tablet;
  }

  if (deviceWidth < 350) {
    return ScreenType.smallMobile;
  }
  return ScreenType.mobile;
}
