import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
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
    var titleFontSize = SizeInfo.settingsCardTitleFontSize;
    var descriptionFontSize = SizeInfo.settingsCardDescriptionFontSize;
    var cardHeight = SizeInfo.settingsCardHeight;
    double smallRingRadiusSize = cardHeight - 17;
    const textPadding = EdgeInsets.symmetric(horizontal: 6.0);

    const marginContainer = EdgeInsets.all(8.0);
    const marginTextBox = EdgeInsets.all(16);

    const radiusContainer = BorderRadius.all(Radius.circular(15));
    const radiusInnerContainer = BorderRadius.all(Radius.circular(10));

    List<Widget> items = [
      Expanded(
        child: Padding(
          padding: textPadding,
          child: RichText(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                text:"${context.t("settings_text.$title").capitalizeFirstLetter()}\n",
                //text: '$title\n',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: titleFontSize),
                children: <TextSpan>[
                  TextSpan(
                    text: context.t("settings_text.$description").capitalizeFirstLetter(),
                   // text: description,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: descriptionFontSize),
                  )
                ]),
          ),
        ),
      ),
      child
    ];
    return Stack(
      key: key,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: cardHeight,
          margin: marginContainer,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.2),
              borderRadius: radiusContainer,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Theme.of(context)
                      .unselectedWidgetColor
                      .withValues(alpha: 0.8),
                  offset: const Offset(0.0, 0.0),
                ),
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  offset: const Offset(0.0, 0.0),
                  spreadRadius: -2.0,
                  blurRadius: 2.0,
                ),
              ]),
        ), //main shape
        Container(
            width: MediaQuery.of(context).size.width,
            height: smallRingRadiusSize,
            margin: marginTextBox,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurface,
                borderRadius: radiusInnerContainer,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).shadowColor,
                      blurRadius: 2.0,
                      offset: const Offset(.0, .0),
                      spreadRadius: 1.5),
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: items)),
      ],
    );
  }
}
