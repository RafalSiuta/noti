import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noti/utils/extensions/string_extension.dart';
import 'package:noti/utils/internationalization/i18_extension.dart';
// import 'package:simple_animations/simple_animations.dart';
// import '../../utils/constants/const_values.dart';
import '../../utils/dimensions/size_info.dart';

class ExportButton extends StatelessWidget {
  const ExportButton({this.onPress, this.isExporting = false, super.key});

  final VoidCallback? onPress;
  final bool isExporting;

  @override
  Widget build(BuildContext context) {
    Color? borderColor = Theme.of(context).textTheme.headlineLarge!.color;
    Color? selectedColor = Theme.of(context).indicatorColor;
    var switchIconSize = SizeInfo.switchButtonIconSize;
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextButton(
          onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8.0,
            children: [
              Text(
                context
                    .t("buttons_text.export_button")
                    .capitalizeFirstLetter(),
                style: Theme.of(context)
                    .textButtonTheme
                    .style
                    ?.textStyle
                    ?.resolve(<WidgetState>{}),
              ),
              SizedBox(
                width: switchIconSize,
                height: switchIconSize,
                child: Center(
                  child: isExporting
                      ? SizedBox(
                    width: switchIconSize,
                    height: switchIconSize,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                      : Icon(
                    Icons.file_upload,
                    color: Theme.of(
                      context,
                    ).textTheme.headlineMedium!.color,
                    size: switchIconSize,
                  ),
                ),
              ),
            ],
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
            // foregroundColor: WidgetStatePropertyAll(Colors.transparent),
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
            side: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.pressed) ||
                  states.contains(WidgetState.focused)) {
                return BorderSide(color: selectedColor,);
              }
              return BorderSide(color: borderColor!);
            }),
            splashFactory: NoSplash.splashFactory,
            textStyle: WidgetStateTextStyle.resolveWith((states) {
              if (states.contains(WidgetState.pressed)) {
                return GoogleFonts.exo2(
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: selectedColor,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                );
              } else if (states.contains(WidgetState.focused)) {
                return GoogleFonts.exo2(
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: selectedColor,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                );
              } else {
                return GoogleFonts.exo2(
                  textStyle:TextStyle(
                    fontSize: 12,
                    color: borderColor,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                );
              }
            }),
          ),
        ),

      );
    //   PlayAnimationBuilder(
    //   tween: Tween<Offset>(begin: const Offset(-20.0, 0), end: Offset.zero),
    //   duration: headerDuration,
    //   builder: (context,value,child){
    //     return
    //       Transform.translate(
    //         offset: value,
    //         child:
    //       );
    //   },
    //   // child:
    // );
  }
}
