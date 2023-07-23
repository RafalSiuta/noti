import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../providers/home_provider.dart';
import '../../utils/dimensions/size_info.dart';

class DateHeader extends StatelessWidget {
  const DateHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titleSize = SizeInfo.headerTitleSize;
    var subtitleSize = SizeInfo.headerSubtitleSize;
    var menuTop = SizeInfo.menuTopMargin;
    var edgePadding = SizeInfo.edgePadding;
    return Consumer<HomeProvider>(
      builder: (context, homeProvider, child) {
        return Padding(
          padding: EdgeInsets.only(
              top: menuTop, bottom: 10.0, right: 8.0, left: edgePadding),
          child: Align(
            alignment: Alignment.topLeft,
            child: PlayAnimationBuilder<Offset>(
              tween: Tween<Offset>(
                  begin: const Offset(-20.0, 0), end: Offset.zero),
              duration: const Duration(milliseconds: 300),
              delay: const Duration(milliseconds: 100),
              curve: Curves.easeOut,
              builder: (context, value, child) {
                return Transform.translate(
                  offset: value,
                  child: RichText(
                    text: TextSpan(
                        text: '${homeProvider.weekday}\n',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(fontSize: titleSize),
                        children: <TextSpan>[
                          TextSpan(
                            text: '${homeProvider.date}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(fontSize: subtitleSize),
                          )
                        ]),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
