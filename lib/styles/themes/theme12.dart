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
    useMaterial3: true,
    scaffoldBackgroundColor: theme_12MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: theme_12TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: theme_12TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: theme_12TitleBoxBcgColor,
    focusColor: theme_12firstGradientColor,
    unselectedWidgetColor: theme_12unselectedColor,
    primaryColor: theme_12firstGradientColor,
    primaryColorLight: theme_12middleGradientColor,
    primaryColorDark: theme_12lastGradientColor,
    cardColor: theme_12noteCardColor,
    indicatorColor: theme_12indicatorColor,
    shadowColor: theme_12MainBcgColor,
    dialogBackgroundColor: theme_12lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: GoogleFonts.raleway(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 32,
          )),

      /// list title
      headlineMedium: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      displayLarge: GoogleFonts.raleway(
          textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      labelLarge: GoogleFonts.raleway(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_12calendarWeekendColor)),

      ///calendar marker style
      labelMedium: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyLarge: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_12calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      displayMedium: GoogleFonts.raleway(
          textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyMedium: GoogleFonts.openSans(
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
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: theme_12unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    // accentIconTheme: const IconThemeData(color: theme_12noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_12indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: Colors.black54,
        elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_12indicatorColor;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_12unselectedColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_12indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_12MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_12unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_12MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_12calendarWeekendColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_12calendarWeekendColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_12calendarWeekendColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_12noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_12calendarWeekendColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_12calendarWeekendColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_12noteCardColor,
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
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black54,
      unselectedLabelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_12indicatorColor,
        inactiveTrackColor: theme_12unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
