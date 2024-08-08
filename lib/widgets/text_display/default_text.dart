import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../utils/dimensions/size_info.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PlayAnimationBuilder(
          tween: Tween<double>(begin: 0.5, end: 1.0),
          duration: const Duration(milliseconds: 300),
          delay: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        builder: (context, value, child){
          return Transform.scale(
            scale: value,
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: SizeInfo.headerSubtitleSize, letterSpacing: 1),
            ),
          );
        },
      )
      // PlayAnimation<double>(
      //   tween: Tween<double>(begin: 0.5, end: 1.0),
      //   duration: const Duration(milliseconds: 300),
      //   delay: const Duration(milliseconds: 200),
      //   curve: Curves.easeOut,
      //   builder: (context, child, value) {
      //     return Transform.scale(
      //       scale: value,
      //       child: Text(
      //         title,
      //         style: Theme.of(context).textTheme.bodyText1!.copyWith(
      //             fontSize: SizeInfo.headerSubtitleSize, letterSpacing: 1),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
