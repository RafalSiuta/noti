import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';

import '../../utils/constans/durations.dart';
import '../../utils/dimensions/size_info.dart';

class SmallHeader extends StatelessWidget {
  const SmallHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeInfo.verticalHeaderPadding),
      child: PlayAnimationBuilder(
          tween: Tween<double>(begin: 0.9, end: 1.0),
          duration: headerDuration,
          delay: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
        builder: (context, value, child){
          return Transform.scale(
            scale: value,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: SizeInfo.headerSubtitleSize),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          );
        },
      )
    );
  }
}
