import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../providers/home_provider.dart';
import '../../utils/constans/durations.dart';
import '../../utils/dimensions/size_info.dart';

class DateHeader extends StatelessWidget {
  const DateHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var titleSize = SizeInfo.headerTitleSize;
    var subtitleSize = SizeInfo.headerSubtitleSize;
    var menuTop = SizeInfo.menuTopMargin;
    var edgePadding = SizeInfo.edgePadding;
    var textStyle = Theme.of(context)
        .textTheme
        .headlineLarge;
    return Consumer<HomeProvider>(
      builder: (context, homeProvider, child) {
        return Padding(
          padding: EdgeInsets.only(
              top: menuTop, bottom: 10.0, right: 8.0, left: edgePadding),
          child: Align(
            alignment: Alignment.topLeft,
            child: PlayAnimationBuilder(
              tween: Tween<Offset>(begin: const Offset(-20.0, 0), end: Offset.zero), duration: headerDuration,
              builder: (context, value, child){
                return Transform.translate(
                  offset: value,
                  child: RichText(
                    text: TextSpan(
                        text: '${homeProvider.wD.format(homeProvider.date)}\n',
                        style: textStyle?.copyWith(fontSize: titleSize),
                        children: <TextSpan>[
                          TextSpan(
                            text: homeProvider.mY.format(homeProvider.date),
                            style: textStyle?.copyWith(fontSize: subtitleSize),
                          )
                        ]),
                  ),
                );
              },
            )
          ),
        );
      },
    );
  }
}
