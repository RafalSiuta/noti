
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../utils/dimensions/size_info.dart';

class SmallHeader extends StatelessWidget {
  const SmallHeader({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeInfo.verticalHeaderPadding),
      child: PlayAnimationBuilder<double>(
        tween: Tween<double>(begin: 0.5, end: 1.0),
        duration: const Duration(milliseconds: 300),
        delay: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        builder: (context, value, child) {
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
        // child:
      ),
    );
  }
}
