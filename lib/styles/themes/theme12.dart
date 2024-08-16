import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_12MainBcgColor = Color(0xFF485550);
const theme_12TitleBoxBcgColor = Color(0xFF576660);

const theme_12firstGradientColor = Color(0xFFc0eb6a);
const theme_12middleGradientColor = Color(0xFF1f665e);
const theme_12lastGradientColor = Color(0xff154742);

const theme_12dividerColor = Color(0xFF0f302d);
const theme_12unselectedColor = Color(0xff133f3b);
const theme_12indicatorColor = Color(0xFFEDBB4C);

const theme_12baseTextColor = Colors.white;
const theme_12UnselectedTaskIcon = Color(0xff133f3b);
const theme_12shadowColor = Color(0xFF414D48);

final theme_12PickersBaseTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_12baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_12PickersTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_12baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_12largeHeaderTextStyle  = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: theme_12baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_12subtitleHeaderTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_12baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_12cardTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_12baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_12contentTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_12baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_12unselectedTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_12unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_12dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_12calendarDayWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_12unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_12dividerColor));

//next month text style:
final theme_12calendarNextMonthTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_12indicatorColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_12unselectedColor));

final theme_12calendarWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_12indicatorColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_12dividerColor));


final theme12 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_12MainBcgColor,
    colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: theme_12baseTextColor,
        surface: theme_12TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme_12UnselectedTaskIcon,
        onSurface: theme_12TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme_12UnselectedTaskIcon
    ),
    canvasColor: theme_12TitleBoxBcgColor,
    focusColor: theme_12firstGradientColor,
    unselectedWidgetColor: theme_12unselectedColor,
    primaryColor: theme_12firstGradientColor,
    primaryColorLight: theme_12middleGradientColor,
    primaryColorDark: theme_12lastGradientColor,
    cardColor: theme_12TitleBoxBcgColor,
    indicatorColor: theme_12indicatorColor,
    shadowColor: theme_12shadowColor,
    dialogBackgroundColor: theme_12lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_12largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_12subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_12cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_12unselectedTextStyle,
      //content text style
      bodyMedium: theme_12contentTextStyle,
      ///calendar default text style
      labelLarge: theme_12calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_12calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_12calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_12dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_12indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_12unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_12baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_12unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_12indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_12unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_12unselectedColor;
          } else {
            return theme_12shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_12indicatorColor;
          } else {
            return theme_12unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_12unselectedColor;
          } else {
            return theme_12shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_12indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_12subtitleHeaderTextStyle,
        contentTextStyle: theme_12contentTextStyle,
        backgroundColor: theme_12MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_12indicatorColor,
      headerHeadlineStyle: theme_12PickersTitleTextStyle,
      headerForegroundColor: theme_12baseTextColor,
      weekdayStyle: theme_12PickersBaseTextStyle,
      dayStyle: theme_12PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_12indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_12unselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_12baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_12TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_12firstGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_12baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_12firstGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_12baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_12baseTextColor; // selected element text color
        }
        return  theme_12firstGradientColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_12indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_12indicatorColor.withOpacity(0.5);
        }
        return theme_12firstGradientColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_12indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_12baseTextColor; // selected element text color
        }
        return  theme_12firstGradientColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_12indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_12PickersBaseTextStyle,
      hourMinuteTextStyle: theme_12PickersBaseTextStyle,
      dialTextStyle: theme_12PickersBaseTextStyle,
      dialHandColor: theme_12indicatorColor, // color handles
      hourMinuteTextColor: theme_12baseTextColor, // text colors
      backgroundColor: theme_12TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_12baseTextColor; // selected element text color
        }
        return  theme_12firstGradientColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_12baseTextColor; // selected element text color
        }
        return  theme_12firstGradientColor; // unselected element text color
      }),
      entryModeIconColor: theme_12baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_12indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_12TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_12indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_12baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_12baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_12TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_12firstGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_12baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_12firstGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_12TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_12unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_12TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_12TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_12unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_12unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_12unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_12TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_12indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_12baseTextColor,
      unselectedLabelColor: theme_12unselectedColor,
      unselectedLabelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_12unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_12baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_12indicatorColor,
        inactiveTrackColor: theme_12unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

// final theme12 = ThemeData(
//     useMaterial3: true,
//     scaffoldBackgroundColor: theme_12MainBcgColor,
//     colorScheme: const ColorScheme(
//       primary: Colors.white,
//       secondary: Colors.white,
//       surface: theme_12TitleBoxBcgColor,
//       error: Colors.redAccent,
//       onPrimary: Colors.white,
//       onSecondary: Colors.white,
//       onSurface: theme_12TitleBoxBcgColor,
//       onError: Colors.white,
//       brightness: Brightness.light,
//     ),
//     canvasColor: theme_12TitleBoxBcgColor,
//     focusColor: theme_12firstGradientColor,
//     unselectedWidgetColor: theme_12unselectedColor,
//     primaryColor: theme_12firstGradientColor,
//     primaryColorLight: theme_12middleGradientColor,
//     primaryColorDark: theme_12lastGradientColor,
//     cardColor: theme_12noteCardColor,
//     indicatorColor: theme_12indicatorColor,
//     shadowColor: theme_12MainBcgColor,
//     dialogBackgroundColor: theme_12lastGradientColor,
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
//               fontSize: 18, color: theme_12calendarWeekendColor)),
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
//               color: theme_12calendarWeekendColor,
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
//               color: theme_12descriptionColor,
//               fontWeight: FontWeight.w300,
//               overflow: TextOverflow.ellipsis)),
//     ),
//     textSelectionTheme: const TextSelectionThemeData(
//       selectionHandleColor: Colors.transparent,
//     ),
//     dividerTheme: const DividerThemeData(
//       color: theme_12dividerColor,
//       thickness: 0.5,
//     ),
//     navigationRailTheme: NavigationRailThemeData(
//       labelType: NavigationRailLabelType.all,
//       groupAlignment: -0.5,
//       selectedIconTheme: const IconThemeData(
//         color: theme_12indicatorColor,
//       ),
//       unselectedIconTheme: const IconThemeData(color: theme_12unselectedColor),
//       selectedLabelTextStyle: GoogleFonts.openSans(
//         textStyle: const TextStyle(
//             color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
//       ),
//       unselectedLabelTextStyle: GoogleFonts.openSans(
//         textStyle: const TextStyle(
//             color: theme_12unselectedColor,
//             fontSize: 17,
//             fontWeight: FontWeight.w900),
//       ),
//     ),
//     // accentIconTheme: const IconThemeData(color: theme_12noteCardColor, size: 18),
//     iconTheme: const IconThemeData(color: theme_12indicatorColor, size: 18),
//     cardTheme: const CardTheme(
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15))),
//         shadowColor: Colors.black54,
//         elevation: 5),
//     switchTheme: SwitchThemeData(
//         thumbColor: MaterialStateProperty.resolveWith(
//               (states) {
//             if (states.contains(MaterialState.selected)) {
//               return theme_12indicatorColor;
//             } else {
//               return Colors.white;
//             }
//           },
//         ),
//         trackColor: MaterialStateProperty.all(theme_12unselectedColor)),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//         backgroundColor: theme_12indicatorColor),
//     dialogTheme: DialogTheme(
//         elevation: 5.0,
//         titleTextStyle: GoogleFonts.exo2(
//           textStyle: const TextStyle(
//               color: theme_12MainBcgColor,
//               fontSize: 18,
//               fontWeight: FontWeight.w500),
//         ),
//         contentTextStyle: GoogleFonts.exo2(
//           textStyle: const TextStyle(
//               color: theme_12unselectedColor,
//               fontSize: 12,
//               fontWeight: FontWeight.w200),
//         ),
//         backgroundColor: theme_12MainBcgColor,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
//     inputDecorationTheme: const InputDecorationTheme(
//       border: InputBorder.none,
//       focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             width: .5,
//             color: theme_12calendarWeekendColor,
//           )),
//       enabledBorder: UnderlineInputBorder(
//           borderSide:
//           BorderSide(width: .5, color: theme_12calendarWeekendColor)),
//       errorBorder: InputBorder.none,
//       disabledBorder: InputBorder.none,
//       focusedErrorBorder: InputBorder.none,
//       isDense: true,
//       filled: false,
//       hintStyle: TextStyle(color: theme_12calendarWeekendColor, fontSize: 20),
//       contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
//       suffixStyle: TextStyle(
//         color: theme_12noteCardColor,
//       ),
//       helperMaxLines: 1,
//       helperStyle: TextStyle(
//         color: theme_12calendarWeekendColor,
//         fontSize: 8.0,
//       ),
//       labelStyle: TextStyle(
//         color: theme_12calendarWeekendColor,
//         fontSize: 20,
//       ),
//       alignLabelWithHint: true,
//       prefixStyle: TextStyle(
//         color: theme_12noteCardColor,
//       ),
//     ),
//     bottomSheetTheme: const BottomSheetThemeData(
//       backgroundColor: Colors.transparent, // theme_12TitleBoxBcgColor,
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.horizontal(
//             left: (Radius.circular(15)), right: (Radius.circular(15))),
//       ),
//     ),
//     tabBarTheme: TabBarTheme(
//       indicator: const UnderlineTabIndicator(
//           borderSide: BorderSide(width: 2.0, color: theme_12indicatorColor),
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
//         activeTrackColor: theme_12indicatorColor,
//         inactiveTrackColor: theme_12unselectedColor,
//         trackShape: RoundedRectSliderTrackShape(),
//         thumbColor: Colors.white));
