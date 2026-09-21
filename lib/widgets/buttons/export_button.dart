import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
// import 'package:simple_animations/simple_animations.dart';
// import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';

class ExportButton extends StatelessWidget {
  const ExportButton({
    this.onPress,
    this.isExporting = false,
    this.textKey = 'buttons_text.export_button',
    this.iconData = Icons.file_upload,
    super.key,
  });

  final VoidCallback? onPress;
  final bool isExporting;
  final String textKey;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    Color? borderColor = Theme.of(context).textTheme.headlineLarge!.color;
    // ignore: deprecated_member_use
    Color? selectedColor = Theme.of(context).indicatorColor;
    var switchIconSize = SizeInfo.switchButtonIconSize;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.transparent),
          // foregroundColor: WidgetStatePropertyAll(Colors.transparent),
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(SizeInfo.innerCardCornerRadius)),
            ),
          ),
          side: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed) ||
                states.contains(WidgetState.focused)) {
              return BorderSide(color: selectedColor);
            }
            return BorderSide(color: borderColor!);
          }),
          splashFactory: NoSplash.splashFactory,
          textStyle: WidgetStateTextStyle.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return GoogleFonts.exo2(
                textStyle: TextStyle(
                  fontSize: SizeInfo.settingsCardTitleFontSize,
                  color: selectedColor,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                ),
              );
            } else if (states.contains(WidgetState.focused)) {
              return GoogleFonts.exo2(
                textStyle: TextStyle(
                  fontSize: SizeInfo.settingsCardTitleFontSize,
                  color: selectedColor,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                ),
              );
            } else {
              return GoogleFonts.exo2(
                textStyle: TextStyle(
                  fontSize: SizeInfo.settingsCardTitleFontSize,
                  color: borderColor,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                ),
              );
            }
          }),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8.0,
          children: [
            Text(
              context.t(textKey).capitalizeFirstLetter(),
              style: Theme.of(
                context,

              ).textButtonTheme.style?.textStyle?.resolve(<WidgetState>{})!.copyWith(fontSize:SizeInfo.settingsCardTitleFontSize ),
            ),
            SizedBox(
              width: switchIconSize,
              height: switchIconSize,
              child: Center(
                child: isExporting
                    ? SizedBox(
                        width: switchIconSize,
                        height: switchIconSize,
                        child: const CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Icon(
                        iconData,
                        color: Theme.of(
                          context,
                        ).textTheme.headlineMedium!.color,
                        size: switchIconSize,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
