import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';
import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/internationalization/app_localizations.dart';

class SmallHeader extends StatelessWidget {
  const SmallHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeInfo.verticalHeaderPadding),
      child: PlayAnimationBuilder(
          tween: Tween<Offset>(begin: const Offset(-5.0, 0), end: Offset.zero),
          duration: headerDuration,
          delay: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
        builder: (context, value, child){
          return Transform.translate(
            offset: value,
            child: Text(
               // AppLocalizations.of(context)!.tr(title).capitalizeFirstLetter(),
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
