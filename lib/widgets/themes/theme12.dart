import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_12MainBcgColor = Color(0xFF485550);
const theme_12TitleBoxBcgColor = Color(0xFF576660);
const theme_12firstGradientColor = Color(0xFFc0eb6a);
const theme_12middleGradientColor = Color(0xFF1f665e);
const theme_12lastGradientColor = Color(0xFF123d38);
const theme_12hintColor = theme_12indicatorColor;
const theme_12noteCardColor = Color(0xFFbfa66d);
const theme_12descriptionColor = Colors.white;
const theme_12dividerColor = Color(0xFF0f302d);
const theme_12unselectedColor = Color(0xFF0f302d);
const theme_12titleColor = Colors.white;
const theme_12calendarWeekendColor = Colors.white;
const theme_12indicatorColor = Color(0xFFEDBB4C);

final theme12 = ThemeData(
    scaffoldBackgroundColor: theme_12MainBcgColor,
    backgroundColor: theme_12TitleBoxBcgColor,
    canvasColor: theme_12TitleBoxBcgColor,
    focusColor: theme_12middleGradientColor,
    unselectedWidgetColor: theme_12unselectedColor,
    primaryColor: theme_12firstGradientColor,
    primaryColorLight: theme_12middleGradientColor,
    primaryColorDark: theme_12lastGradientColor,
    cardColor: theme_12noteCardColor,
    indicatorColor: theme_12indicatorColor,
    toggleableActiveColor: Colors.white,
    shadowColor: theme_12MainBcgColor,
    dialogBackgroundColor: theme_12lastGradientColor,
    primarySwatch: Colors.yellow,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.arvo(
          textStyle: const TextStyle(
        color: theme_12titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.arvo(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_12titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_12titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_12calendarWeekendColor)),

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
              color: theme_12calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.arvo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_12titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_12descriptionColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
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
      selectedIconTheme: const IconThemeData(
        color: theme_12indicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_12unselectedColor),
      selectedLabelTextStyle: GoogleFonts.arvo(
        textStyle: const TextStyle(
            color: theme_12titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.arvo(
        textStyle: const TextStyle(
            color: theme_12unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_12noteCardColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_12hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_12noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_12noteCardColor,
      ),
      helperStyle: TextStyle(
        color: theme_12calendarWeekendColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_12noteCardColor,
      ),
    ),
    accentIconTheme:
        const IconThemeData(color: theme_12noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_12indicatorColor, size: 18),
    cardTheme:
        const CardTheme(shadowColor: theme_12unselectedColor, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_12indicatorColor;
            } else {
              return theme_12titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_12MainBcgColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_12indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.openSans(
          textStyle: const TextStyle(
              color: theme_12MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.openSans(
          textStyle: const TextStyle(
              color: theme_12unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_12TitleBoxBcgColor,
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
          borderSide: BorderSide(width: 2.0, color: theme_12indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_12titleColor,
      unselectedLabelColor: theme_12unselectedColor,
      unselectedLabelStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_12unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_12titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_12indicatorColor,
        inactiveTrackColor: theme_12unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
