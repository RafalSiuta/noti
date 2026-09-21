import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import '../../utils/colors/inner_shadow_decoration.dart';
import '../../utils/dimensions/size_info.dart';
import '../../utils/internationalization/i18_extension.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.title,
    required this.description,
    required this.child,
  });

  final String title;
  final String description;
  final Widget child;

  @override
  Widget build(BuildContext context) {

    List<Widget> items = [
      Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeInfo.cardInnerPadding,vertical: SizeInfo.cardInnerPadding),
          child: RichText(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                text:"${context.t("settings_text.$title").capitalizeFirstLetter()}\n",
                //text: '$title\n',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: SizeInfo.settingsCardTitleFontSize),
                children: <TextSpan>[
                  TextSpan(
                    text: context.t("settings_text.$description").capitalizeFirstLetter(),
                   // text: description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: SizeInfo.settingsCardDescriptionFontSize),
                  )
                ]),
          ),
        ),
      ),
      child
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: cardHeight,
      margin: EdgeInsets.all(SizeInfo.edgePadding),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(SizeInfo.outherCardCornerRadius)),
      ),
      foregroundDecoration: InnerShadowDecoration(
        borderRadius: BorderRadius.all(Radius.circular(SizeInfo.outherCardCornerRadius)),
        color: Theme.of(context).shadowColor,//.withValues(alpha: 0.8),
      ),
      child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(SizeInfo.cardInnerPadding),
          padding: EdgeInsets.only(top:SizeInfo.cardInnerPadding/2,left:SizeInfo.cardInnerPadding,bottom:SizeInfo.cardInnerPadding/2,),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.all(Radius.circular(SizeInfo.innerCardCornerRadius)),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).unselectedWidgetColor,//.withValues(alpha: 0.2),
                    blurRadius: 2.0,
                    offset: const Offset(.0, .0),
                    spreadRadius: 1.5),
              ]),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: items)),
    );
  }
}
