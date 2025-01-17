import 'package:flutter/material.dart';
import '../../utils/dimensions/screen_type.dart';
import '../../utils/dimensions/size_info.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, SizeInfo sizeInfo)? builder;

  const ResponsiveBuilder({Key? key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizingInformation = SizeInfo(
          screenType: getScreenType(mediaQuery), screenSize: mediaQuery.size);

      return builder!(context, sizingInformation);
    });
  }
}
