import 'package:flutter/widgets.dart';

enum ScreenType { smallMobile, mobile, tablet, desktop }

ScreenType getScreenType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.shortestSide;

  if (deviceWidth > 950) {
    print("DESKTOP");
    return ScreenType.desktop;
  }

  if (deviceWidth > 600) {
    // 768
    print("TABLET");
    return ScreenType.tablet;
  }

  if (deviceWidth < 350) {
    print("SMALL MOBILE");
    return ScreenType.smallMobile;
  }
  print("MOBILE");
  return ScreenType.mobile;
}
