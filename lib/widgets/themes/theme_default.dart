import 'package:flutter/material.dart';
import 'package:noti_2/widgets/themes/style_exports.dart';
import 'package:google_fonts/google_fonts.dart';


const theme_4MainBcgColor = Color(0xFFEEEEEE);
const theme_4TitleBoxBcgColor = Colors.white;
const theme_4firstGradientColor = Color(0xFF00C3FF);
const theme_4middleGradientColor = Color(0xFF1B6BFF);
const theme_4lastGradientColor = Color(0xFF2525FF);
const theme_4noteCardColor = Color(0xFFf5f5f5); //Color(0xFFdec9ab);f5f5f5
const theme_4descriptionColor = Color(0xFF636363);
const theme_4dividerColor = Color(0xFF636363);
const theme_4unselectedColor = Color(0xFF9e9e9e); //595959
//const theme_4calendarWeekendColor = Color(0xFFab977b);
const theme_4indicatorColor = Color(0xFFffca28); // FEA735 f5f5f5
const theme_4shadowColor = Color(0xFFC0C0C0);

final themeDefault = ThemeData(
    useMaterial3: true,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: theme_4MainBcgColor,
    // backgroundColor: theme_2TitleBoxBcgColor,

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: theme_4firstGradientColor,
      onPrimary: theme_4firstGradientColor,
      secondary: Colors.white,
      onSecondary: theme_4lastGradientColor,
      error: Color(0xFFF32424),
      onError: Color(0xFFF32424),
      background: theme_4TitleBoxBcgColor,
      onBackground: theme_4TitleBoxBcgColor,
      surface: theme_4MainBcgColor,
      onSurface: theme_4MainBcgColor,
    ),
    canvasColor: theme_4TitleBoxBcgColor,
    focusColor: theme_4middleGradientColor,

    unselectedWidgetColor: theme_4unselectedColor,
    primaryColor: theme_4firstGradientColor,
    primaryColorLight: theme_4middleGradientColor,
    primaryColorDark: theme_4lastGradientColor,
    cardColor: theme_4middleGradientColor,
    indicatorColor: Colors.amber,
    highlightColor: Colors.transparent,
    shadowColor: theme_4MainBcgColor,
    dialogBackgroundColor: theme_4lastGradientColor,
    primarySwatch: Colors.amber,
    splashColor: Colors.transparent,
    textTheme: TextTheme(
      /// main big title //headline 1
      headlineLarge: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 32,
          )),
      /// list title //headline 3 // calendar header/ header secondary date
      headlineMedium: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_2noteCardColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
            overflow: TextOverflow.ellipsis),
      ),
      //headlineSmall: null,
      /// date header style
      displayLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_2lastGradientColor,
              fontWeight: FontWeight.w700,
              letterSpacing: 2)),
      //displayMedium: null,
      //task time
      displaySmall: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1)),
      ///calendar weekend text style
      bodyLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.amber,
          )),
      //task/note/project description text style:
      bodyMedium:  GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_2lastGradientColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
      ///calendar marker style
      bodySmall: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_2noteCardColor,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),
    ),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(theme_2MainBcgColor.withOpacity(0.1))
        )
    ),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(theme_2MainBcgColor.withOpacity(0.1))
        )
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_4dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      //useIndicator: true,
      indicatorColor: Colors.transparent,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: Colors.amber,

      ),
      unselectedIconTheme: IconThemeData(color: theme_4unselectedColor,),
      selectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.robotoSlab(
          textStyle:  TextStyle(
              color: theme_4unselectedColor,
              fontSize: 18,
              fontWeight: FontWeight.w500
          )),
    ),
    accentIconTheme: const IconThemeData(color: theme_4noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: Colors.amber, size: 18),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.amber;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_4MainBcgColor)),
    floatingActionButtonTheme:
    const FloatingActionButtonThemeData(
        backgroundColor: Colors.amber
    ),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_4noteCardColor,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_4noteCardColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: theme_4MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_4dividerColor,
          )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: Colors.black, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_4unselectedColor,
      ),
      labelStyle: TextStyle(
        color: theme_4noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: theme_4unselectedColor,
          fontSize: 7.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_2noteCardColor,
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      refreshBackgroundColor: theme_4unselectedColor,
      // linearTrackColor: Colors.amber


    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_4TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),

    tabBarTheme: TabBarTheme(
      dividerColor: theme_4dividerColor,

      overlayColor: MaterialStateProperty.all(Colors.transparent),
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: Colors.amber),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: Colors.black,
      unselectedLabelColor: theme_4unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_4unselectedColor,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
            overflow: TextOverflow.ellipsis),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_12indicatorColor,
        inactiveTrackColor: theme_4unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));




// ThemeData(
//     scaffoldBackgroundColor: theme_4MainBcgColor,
//     //colorScheme: ColorScheme(onBackground: theme_4TitleBoxBcgColor, brightness: Brightness.light, onPrimary: theme_4firstGradientColor, secondary: ),
//     backgroundColor: theme_4TitleBoxBcgColor,
//     canvasColor: theme_4TitleBoxBcgColor,
//     focusColor: theme_4firstGradientColor,
//     unselectedWidgetColor: theme_4unselectedColor,
//     primaryColor: theme_4firstGradientColor,
//     primaryColorLight: theme_4middleGradientColor,
//     primaryColorDark: theme_4lastGradientColor,
//     cardColor: theme_4noteCardColor,
//     indicatorColor: theme_4indicatorColor,
//     toggleableActiveColor: Colors.white,
//     shadowColor: theme_4MainBcgColor,
//     dialogBackgroundColor: theme_4lastGradientColor,
//     primarySwatch: Colors.blue,
//     textTheme: TextTheme(
//       displayLarge:  const TextStyle(
//         color: Colors.black,
//         fontSize: 32,
//       )
//       // /// main big title
//       // headline1: GoogleFonts.raleway(
//       //     textStyle: const TextStyle(
//       //   color: Colors.black,
//       //   fontSize: 32,
//       // )),
//       //
//       // /// list title
//       // headline2: GoogleFonts.raleway(
//       //   textStyle: const TextStyle(
//       //       fontSize: 18,
//       //       color: Colors.black,
//       //       fontWeight: FontWeight.w500,
//       //       decoration: TextDecoration.none),
//       // ),
//       //
//       // /// date header style
//       // headline3: GoogleFonts.raleway(
//       //     textStyle: const TextStyle(
//       //         fontSize: 18,
//       //         color: Colors.black,
//       //         fontWeight: FontWeight.w500,
//       //         letterSpacing: 2)),
//       //
//       // ///calendar weekend text style
//       // subtitle1: GoogleFonts.raleway(
//       //     textStyle: const TextStyle(
//       //         fontSize: 18, color: theme_4calendarWeekendColor)),
//       //
//       // ///calendar marker style
//       // subtitle2: GoogleFonts.openSans(
//       //     textStyle: const TextStyle(
//       //         fontSize: 10,
//       //         color: Colors.white,
//       //         fontWeight: FontWeight.bold,
//       //         overflow: TextOverflow.ellipsis)),
//       //
//       // ///task description text style
//       // bodyText1: GoogleFonts.openSans(
//       //     textStyle: const TextStyle(
//       //         fontSize: 10,
//       //         color: theme_4calendarWeekendColor,
//       //         fontWeight: FontWeight.w300,
//       //         overflow: TextOverflow.ellipsis)),
//       //
//       // ///note title style
//       // headline4: GoogleFonts.raleway(
//       //     textStyle: const TextStyle(
//       //         fontSize: 18,
//       //         color: Colors.black,
//       //         fontWeight: FontWeight.w500,
//       //         letterSpacing: 0,
//       //         overflow: TextOverflow.ellipsis)),
//       //
//       // ///note description text style
//       // bodyText2: GoogleFonts.openSans(
//       //     textStyle: const TextStyle(
//       //         fontSize: 10,
//       //         color: theme_4descriptionColor,
//       //         fontWeight: FontWeight.w300,
//       //         overflow: TextOverflow.ellipsis)),
//     ),
//     textSelectionTheme: const TextSelectionThemeData(
//       selectionHandleColor: Colors.transparent,
//     ),
//     dividerTheme: const DividerThemeData(
//       color: theme_4dividerColor,
//       thickness: 0.5,
//     ),
//     navigationRailTheme: NavigationRailThemeData(
//       labelType: NavigationRailLabelType.all,
//       groupAlignment: -0.5,
//       selectedIconTheme: const IconThemeData(
//         color: theme_4indicatorColor,
//       ),
//       unselectedIconTheme: const IconThemeData(color: theme_4unselectedColor),
//       selectedLabelTextStyle: const TextStyle(
//           color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
//       unselectedLabelTextStyle: TextStyle(
//           color: theme_4unselectedColor,
//           fontSize: 17,
//           fontWeight: FontWeight.w900),
//     ),
//     accentIconTheme: const IconThemeData(color: theme_4noteCardColor, size: 18),
//     iconTheme: const IconThemeData(color: theme_4indicatorColor, size: 18),
//     cardTheme: const CardTheme(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15))),
//         shadowColor: Colors.black54,
//         elevation: 5),
//     switchTheme: SwitchThemeData(
//         thumbColor: MaterialStateProperty.resolveWith(
//           (states) {
//             if (states.contains(MaterialState.selected)) {
//               return theme_4indicatorColor;
//             } else {
//               return Colors.white;
//             }
//           },
//         ),
//         trackColor: MaterialStateProperty.all(theme_4unselectedColor)),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//         backgroundColor: theme_4indicatorColor),
//     dialogTheme: DialogTheme(
//         elevation: 5.0,
//         titleTextStyle: const TextStyle(
//             color: theme_4MainBcgColor,
//             fontSize: 18,
//             fontWeight: FontWeight.w500),
//         contentTextStyle: const TextStyle(
//             color: theme_4unselectedColor,
//             fontSize: 12,
//             fontWeight: FontWeight.w200),
//         backgroundColor: theme_4MainBcgColor,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
//     inputDecorationTheme: const InputDecorationTheme(
//       border: InputBorder.none,
//       focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//         width: .5,
//         color: theme_4calendarWeekendColor,
//       )),
//       enabledBorder: UnderlineInputBorder(
//           borderSide:
//               BorderSide(width: .5, color: theme_4calendarWeekendColor)),
//       errorBorder: InputBorder.none,
//       disabledBorder: InputBorder.none,
//       focusedErrorBorder: InputBorder.none,
//       isDense: true,
//       filled: false,
//       hintStyle: TextStyle(color: theme_4calendarWeekendColor, fontSize: 20),
//       contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
//       suffixStyle: TextStyle(
//         color: theme_4noteCardColor,
//       ),
//       helperMaxLines: 1,
//       helperStyle: TextStyle(
//         color: theme_4calendarWeekendColor,
//         fontSize: 8.0,
//       ),
//       labelStyle: TextStyle(
//         color: theme_4calendarWeekendColor,
//         fontSize: 20,
//       ),
//       alignLabelWithHint: true,
//       prefixStyle: TextStyle(
//         color: theme_4noteCardColor,
//       ),
//     ),
//     bottomSheetTheme: const BottomSheetThemeData(
//       backgroundColor: Colors.transparent, // theme_4TitleBoxBcgColor,
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.horizontal(
//             left: (Radius.circular(15)), right: (Radius.circular(15))),
//       ),
//     ),
//     tabBarTheme: TabBarTheme(
//       indicator: const UnderlineTabIndicator(
//           borderSide: BorderSide(width: 2.0, color: theme_4indicatorColor),
//           insets: EdgeInsets.symmetric(horizontal: 16.0)),
//       labelColor: Colors.black,
//       unselectedLabelColor: Colors.black54,
//       unselectedLabelStyle: const TextStyle(
//           fontSize: 12,
//           color: Colors.black54,
//           fontWeight: FontWeight.w200,
//           decoration: TextDecoration.none),
//       labelStyle:TextStyle(
//           fontSize: 12,
//           color: Colors.black,
//           fontWeight: FontWeight.w500,
//           decoration: TextDecoration.none),
//     ),
//     sliderTheme: const SliderThemeData(
//         activeTrackColor: theme_4indicatorColor,
//         inactiveTrackColor: theme_4unselectedColor,
//         trackShape: RoundedRectSliderTrackShape(),
//         thumbColor: Colors.white));
