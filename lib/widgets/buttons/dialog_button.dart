import 'package:flutter/material.dart';
import 'package:noti/utils/dimensions/size_info.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({
    this.isConfirmed = false,
    required this.onConfirm,
    super.key,
  });

  final bool isConfirmed;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    var fontSize = SizeInfo.settingsCardTitleFontSize;
    return TextButton(
      style: isConfirmed == true
          ? Theme.of(context).datePickerTheme.confirmButtonStyle!
          : Theme.of(context).datePickerTheme.cancelButtonStyle!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
        child: Text(
          context
              .t(
                isConfirmed == true
                    ? "dialogs_text.confirm"
                    : "dialogs_text.cancel",
              )
              .capitalizeFirstLetter(),
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(fontSize: fontSize),
        ),
      ),
      onPressed: () {
        if (isConfirmed == true) {
          onConfirm();
        }
        Navigator.pop(context);
      },
    );
  }
}
