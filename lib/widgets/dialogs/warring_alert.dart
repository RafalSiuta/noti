import 'package:flutter/material.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
import 'package:noti/widgets/buttons/dialog_button.dart';

import '../../utils/dimensions/size_info.dart';

class WarringAlert extends StatelessWidget {
  const WarringAlert({this.message = "", required this.onConfirm, super.key});

  final String message;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    var textSize = SizeInfo.headerSubtitleSize;
    var sidePadding = SizeInfo.leftEdgePadding;
    return Center(
      child: Card(
        elevation: 5.0,
        margin: EdgeInsets.all(MediaQuery.of(context).size.width / 14),
        color: Theme.of(context).colorScheme.onSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: textSize * 3,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  stops: const [0.0, 0.5, 1.0],
                  colors: [
                    Theme.of(context).primaryColor,
                    Theme.of(context).primaryColorLight,
                    Theme.of(context).primaryColorDark,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: SizeInfo.edgePadding,
                children: [
                  Icon(
                    Icons.warning_rounded,
                    color: Theme.of(context).colorScheme.error,
                    size: textSize*1.2,
                  ),
                  Text(
                    context.t("dialogs_text.warring").capitalizeFirstLetter(),
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).dialogTheme.titleTextStyle!.copyWith(fontSize: textSize,color:Theme.of(context).colorScheme.secondary,),

                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: sidePadding,
              ),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: SizeInfo.taskCardDescription,
                 // height: 1.35,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: sidePadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: SizeInfo.edgePadding,
                children: [
                  DialogButton(onConfirm: () {}),
                  DialogButton(isConfirmed: true, onConfirm: onConfirm),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
