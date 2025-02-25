import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PlayAnimationBuilder(
          tween: Tween<double>(begin: 0.8, end: 1.0),
          duration: headerDuration,
          delay: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
        builder: (context, value, child){
          return Transform.scale(
            scale: value,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: SizeInfo.headerSubtitleSize, letterSpacing: 1),
              ),
            ),
          );
        },
      )
    );
  }
}
