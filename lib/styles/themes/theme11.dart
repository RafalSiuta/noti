import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_11MainBcgColor = Color(0xffbcab93);
const theme_11TitleBoxBcgColor = Color(0xFFc9b59d);
const theme_11firstGradientColor = Color(0xFFffba3b);
const theme_11middleGradientColor = Color(0xFFcf6b13);
const theme_11lastGradientColor = Color(0xFF482509);
const theme_11descriptionColor = Color(0xFF482509);
const theme_11dividerColor = Color(0xFF482509);
const theme_11unselectedColor = Color(0xff675b4f);

const theme_11indicatorColor = Colors.red;

const theme_11baseTextColor = Colors.white;
const theme_11UnselectedTaskIcon = Color(0xff9f5416);
const theme_11shadowColor = Color(0xffb19c89);

final theme_11PickersBaseTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_11baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_11PickersTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_11baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_11largeHeaderTextStyle  = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: theme_11baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_11subtitleHeaderTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_11baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_11cardTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_11baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_11contentTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_11baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_11unselectedTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_11unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_11dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_11calendarDayWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_11unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_11dividerColor));

//next month text style:
final theme_11calendarNextMonthTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_11lastGradientColor,//theme_11unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_11unselectedColor));

final theme_11calendarWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_11lastGradientColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_11dividerColor));


final theme11 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_11MainBcgColor,
    colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: theme_11baseTextColor,
        surface: theme_11TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme_11UnselectedTaskIcon,
        onSurface: theme_11TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme_11UnselectedTaskIcon
    ),
    canvasColor: theme_11TitleBoxBcgColor,
    focusColor: theme_11firstGradientColor,
    unselectedWidgetColor: theme_11unselectedColor,
    primaryColor: theme_11firstGradientColor,
    primaryColorLight: theme_11middleGradientColor,
    primaryColorDark: theme_11lastGradientColor,
    cardColor: theme_11TitleBoxBcgColor,
    indicatorColor: theme_11indicatorColor,
    shadowColor: theme_11shadowColor,
    dialogBackgroundColor: theme_11lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_11largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_11subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_11cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_11unselectedTextStyle,
      //content text style
      bodyMedium: theme_11contentTextStyle,
      ///calendar default text style
      labelLarge: theme_11calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_11calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_11calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_11dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_11indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_11unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_11baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_11unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_11indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_11unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_11unselectedColor;
          } else {
            return theme_11shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_11indicatorColor;
          } else {
            return theme_11unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_11unselectedColor;
          } else {
            return theme_11shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_11indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_11subtitleHeaderTextStyle,
        contentTextStyle: theme_11contentTextStyle,
        backgroundColor: theme_11MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_11indicatorColor,
      headerHeadlineStyle: theme_11PickersTitleTextStyle,
      headerForegroundColor: theme_11baseTextColor,
      weekdayStyle: theme_11PickersBaseTextStyle,
      dayStyle: theme_11PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_11indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_11unselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_11baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_11TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_11lastGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_11baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_11lastGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_11baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_11baseTextColor; // selected element text color
        }
        return  theme_11lastGradientColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_11indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_11indicatorColor.withOpacity(0.5);
        }
        return theme_11lastGradientColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_11indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_11baseTextColor; // selected element text color
        }
        return  theme_11lastGradientColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_11indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_11PickersBaseTextStyle,
      hourMinuteTextStyle: theme_11PickersBaseTextStyle,
      dialTextStyle: theme_11PickersBaseTextStyle,
      dialHandColor: theme_11indicatorColor, // color handles
      hourMinuteTextColor: theme_11baseTextColor, // text colors
      backgroundColor: theme_11TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_11baseTextColor; // selected element text color
        }
        return  theme_11lastGradientColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_11baseTextColor; // selected element text color
        }
        return  theme_11lastGradientColor; // unselected element text color
      }),
      entryModeIconColor: theme_11baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_11indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_11TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_11indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_11baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_11baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_11TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_11lastGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_11baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_11lastGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_11TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_11unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_11TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_11TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_11unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_11unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_11unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_11TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_11indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_11baseTextColor,
      unselectedLabelColor: theme_11unselectedColor,
      unselectedLabelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_11unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_11baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_11indicatorColor,
        inactiveTrackColor: theme_11unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);


// final theme11 = ThemeData(
//     useMaterial3: true,
//     scaffoldBackgroundColor: theme_11MainBcgColor,
//     colorScheme: const ColorScheme(
//       primary: Colors.white,
//       secondary: Colors.white,
//       surface: theme_11TitleBoxBcgColor,
//       error: Colors.redAccent,
//       onPrimary: Colors.white,
//       onSecondary: Colors.white,
//       onSurface: theme_11TitleBoxBcgColor,
//       onError: Colors.white,
//       brightness: Brightness.light,
//     ),
//     canvasColor: theme_11TitleBoxBcgColor,
//     focusColor: theme_11firstGradientColor,
//     unselectedWidgetColor: theme_11unselectedColor,
//     primaryColor: theme_11firstGradientColor,
//     primaryColorLight: theme_11middleGradientColor,
//     primaryColorDark: theme_11lastGradientColor,
//     cardColor: theme_11noteCardColor,
//     indicatorColor: theme_11indicatorColor,
//     shadowColor: theme_11MainBcgColor,
//     dialogBackgroundColor: theme_11lastGradientColor,
//     primarySwatch: Colors.blue,
//     textTheme: TextTheme(
//       /// main big title
//       headlineLarge: GoogleFonts.raleway(
//           textStyle: const TextStyle(
//             color: Colors.black,
//             fontSize: 32,
//           )),
//
//       /// list title
//       headlineMedium: GoogleFonts.raleway(
//         textStyle: const TextStyle(
//             fontSize: 18,
//             color: Colors.black,
//             fontWeight: FontWeight.w500,
//             decoration: TextDecoration.none),
//       ),
//
//       /// date header style
//       displayLarge: GoogleFonts.raleway(
//           textStyle: const TextStyle(
//               fontSize: 18,
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//               letterSpacing: 2)),
//
//       ///calendar weekend text style
//       labelLarge: GoogleFonts.raleway(
//           textStyle: const TextStyle(
//               fontSize: 18, color: theme_11calendarWeekendColor)),
//
//       ///calendar marker style
//       labelMedium: GoogleFonts.openSans(
//           textStyle: const TextStyle(
//               fontSize: 10,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               overflow: TextOverflow.ellipsis)),
//
//       ///task description text style
//       bodyLarge: GoogleFonts.openSans(
//           textStyle: const TextStyle(
//               fontSize: 10,
//               color: theme_11calendarWeekendColor,
//               fontWeight: FontWeight.w300,
//               overflow: TextOverflow.ellipsis)),
//
//       ///note title style
//       displayMedium: GoogleFonts.raleway(
//           textStyle: const TextStyle(
//               fontSize: 18,
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//               letterSpacing: 0,
//               overflow: TextOverflow.ellipsis)),
//
//       ///note description text style
//       bodyMedium: GoogleFonts.openSans(
//           textStyle: const TextStyle(
//               fontSize: 10,
//               color: theme_11descriptionColor,
//               fontWeight: FontWeight.w300,
//               overflow: TextOverflow.ellipsis)),
//     ),
//     textSelectionTheme: const TextSelectionThemeData(
//       selectionHandleColor: Colors.transparent,
//     ),
//     dividerTheme: const DividerThemeData(
//       color: theme_11dividerColor,
//       thickness: 0.5,
//     ),
//     navigationRailTheme: NavigationRailThemeData(
//       labelType: NavigationRailLabelType.all,
//       groupAlignment: -0.5,
//       selectedIconTheme: const IconThemeData(
//         color: theme_11indicatorColor,
//       ),
//       unselectedIconTheme: const IconThemeData(color: theme_11unselectedColor),
//       selectedLabelTextStyle: GoogleFonts.openSans(
//         textStyle: const TextStyle(
//             color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
//       ),
//       unselectedLabelTextStyle: GoogleFonts.openSans(
//         textStyle: const TextStyle(
//             color: theme_11unselectedColor,
//             fontSize: 17,
//             fontWeight: FontWeight.w900),
//       ),
//     ),
//     // accentIconTheme: const IconThemeData(color: theme_11noteCardColor, size: 18),
//     iconTheme: const IconThemeData(color: theme_11indicatorColor, size: 18),
//     cardTheme: const CardTheme(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15))),
//         shadowColor: Colors.black54,
//         elevation: 5),
//     switchTheme: SwitchThemeData(
//         thumbColor: MaterialStateProperty.resolveWith(
//               (states) {
//             if (states.contains(MaterialState.selected)) {
//               return theme_11indicatorColor;
//             } else {
//               return Colors.white;
//             }
//           },
//         ),
//         trackColor: MaterialStateProperty.all(theme_11unselectedColor)),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//         backgroundColor: theme_11indicatorColor),
//     dialogTheme: DialogTheme(
//         elevation: 5.0,
//         titleTextStyle: GoogleFonts.exo2(
//           textStyle: const TextStyle(
//               color: theme_11MainBcgColor,
//               fontSize: 18,
//               fontWeight: FontWeight.w500),
//         ),
//         contentTextStyle: GoogleFonts.exo2(
//           textStyle: const TextStyle(
//               color: theme_11unselectedColor,
//               fontSize: 12,
//               fontWeight: FontWeight.w200),
//         ),
//         backgroundColor: theme_11MainBcgColor,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
//     inputDecorationTheme: const InputDecorationTheme(
//       border: InputBorder.none,
//       focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             width: .5,
//             color: theme_11calendarWeekendColor,
//           )),
//       enabledBorder: UnderlineInputBorder(
//           borderSide:
//           BorderSide(width: .5, color: theme_11calendarWeekendColor)),
//       errorBorder: InputBorder.none,
//       disabledBorder: InputBorder.none,
//       focusedErrorBorder: InputBorder.none,
//       isDense: true,
//       filled: false,
//       hintStyle: TextStyle(color: theme_11calendarWeekendColor, fontSize: 20),
//       contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
//       suffixStyle: TextStyle(
//         color: theme_11noteCardColor,
//       ),
//       helperMaxLines: 1,
//       helperStyle: TextStyle(
//         color: theme_11calendarWeekendColor,
//         fontSize: 8.0,
//       ),
//       labelStyle: TextStyle(
//         color: theme_11calendarWeekendColor,
//         fontSize: 20,
//       ),
//       alignLabelWithHint: true,
//       prefixStyle: TextStyle(
//         color: theme_11noteCardColor,
//       ),
//     ),
//     bottomSheetTheme: const BottomSheetThemeData(
//       backgroundColor: Colors.transparent, // theme_11TitleBoxBcgColor,
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.horizontal(
//             left: (Radius.circular(15)), right: (Radius.circular(15))),
//       ),
//     ),
//     tabBarTheme: TabBarTheme(
//       indicator: const UnderlineTabIndicator(
//           borderSide: BorderSide(width: 2.0, color: theme_11indicatorColor),
//           insets: EdgeInsets.symmetric(horizontal: 16.0)),
//       labelColor: Colors.black,
//       unselectedLabelColor: Colors.black54,
//       unselectedLabelStyle: GoogleFonts.raleway(
//         textStyle: const TextStyle(
//             fontSize: 12,
//             color: Colors.black54,
//             fontWeight: FontWeight.w200,
//             decoration: TextDecoration.none),
//       ),
//       labelStyle: GoogleFonts.raleway(
//         textStyle: const TextStyle(
//             fontSize: 12,
//             color: Colors.black,
//             fontWeight: FontWeight.w500,
//             decoration: TextDecoration.none),
//       ),
//     ),
//     sliderTheme: const SliderThemeData(
//         activeTrackColor: theme_11indicatorColor,
//         inactiveTrackColor: theme_11unselectedColor,
//         trackShape: RoundedRectSliderTrackShape(),
//         thumbColor: Colors.white));
