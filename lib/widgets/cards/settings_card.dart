import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

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
                text: '$title\n',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: titleFontSize),
                children: <TextSpan>[
                  TextSpan(
                    text: description,
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
              borderRadius: radiusContainer,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Theme.of(context)
                      .unselectedWidgetColor
                      .withOpacity(0.8),
                  offset: const Offset(0.0, 0.0),
                ),
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  offset: const Offset(0.0, 0.0),
                  spreadRadius: -2.0,
                  blurRadius: 2.0,
                ),
                // BoxShadow(
                //   color: Theme.of(context).unselectedWidgetColor,
                //   offset: const Offset(0.0, 0.0),
                // ),
                // BoxShadow(
                //   color: Theme.of(context).shadowColor,
                //   offset: const Offset(0.0, 0.0),
                //   spreadRadius: -3.0,
                //   blurRadius: 3.0,
                // ),
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
                  // BoxShadow(
                  //     color: Theme.of(context).unselectedWidgetColor,
                  //     blurRadius: 3.0,
                  //     offset: const Offset(.0, .0),
                  //     spreadRadius: 2.0),
                  // BoxShadow(
                  //   color: Theme.of(context).shadowColor,
                  //   offset: const Offset(0.0, 0.0),
                  //   spreadRadius: 3.0,
                  //   blurRadius: 3.0,

                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: items)),
      ],
    );
  }
}
