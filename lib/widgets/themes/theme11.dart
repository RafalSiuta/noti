import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_11MainBcgColor = Color(0xFFc9b59d);
const theme_11TitleBoxBcgColor = Color(0xFFe8cfb3);
const theme_11firstGradientColor = Color(0xFFffba3b);
const theme_11middleGradientColor = Color(0xFFcf6b13);
const theme_11lastGradientColor = Color(0xFF482509);
const theme_11hintColor = theme_11indicatorColor;
const theme_11noteCardColor = Color(0xFF664833);
const theme_11descriptionColor = Color(0xFF482509);
const theme_11dividerColor = Color(0xFF482509);
const theme_11unselectedColor = Color(0xFF38322a);
const theme_11titleColor = Colors.white;
const theme_11calendarWeekendColor = Color(0xFF482509);
const theme_11indicatorColor = Colors.red;
const test = Color(0xFFF44336);

final theme11 = ThemeData(
    scaffoldBackgroundColor: theme_11MainBcgColor,
    backgroundColor: theme_11TitleBoxBcgColor,
    canvasColor: theme_11TitleBoxBcgColor,
    focusColor: theme_11middleGradientColor,
    unselectedWidgetColor: theme_11unselectedColor,
    primaryColor: theme_11firstGradientColor,
    primaryColorLight: theme_11middleGradientColor,
    primaryColorDark: theme_11lastGradientColor,
    cardColor: theme_11noteCardColor,
    indicatorColor: theme_11indicatorColor,
    toggleableActiveColor: Colors.white,
    shadowColor: theme_11MainBcgColor,
    dialogBackgroundColor: theme_11lastGradientColor,
    primarySwatch: Colors.red,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.arvo(
          textStyle: const TextStyle(
        color: theme_11titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.arvo(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_11titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_11titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_11calendarWeekendColor)),

      ///calendar marker style
      subtitle2: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyText1: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_11calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.arvo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_11titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_11TitleBoxBcgColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
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
      selectedIconTheme: const IconThemeData(
        color: theme_11indicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_11unselectedColor),
      selectedLabelTextStyle: GoogleFonts.arvo(
        textStyle: const TextStyle(
            color: theme_11titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.arvo(
        textStyle: const TextStyle(
            color: theme_11unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_11noteCardColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_11hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_11noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_11noteCardColor,
      ),
      helperStyle: TextStyle(
        color: theme_11calendarWeekendColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_11noteCardColor,
      ),
    ),
    accentIconTheme:
        const IconThemeData(color: theme_11noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_11indicatorColor, size: 18),
    cardTheme:
        const CardTheme(shadowColor: theme_11unselectedColor, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_11indicatorColor;
            } else {
              return theme_11titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_11MainBcgColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_11indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.openSans(
          textStyle: const TextStyle(
              color: theme_11MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.openSans(
          textStyle: const TextStyle(
              color: theme_11unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_11TitleBoxBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
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
      labelColor: theme_11titleColor,
      unselectedLabelColor: theme_11unselectedColor,
      unselectedLabelStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_11unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_11titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_11indicatorColor,
        inactiveTrackColor: theme_11unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
