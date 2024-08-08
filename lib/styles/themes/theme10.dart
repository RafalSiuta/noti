import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_10MainBcgColor = Color(0xFFc2bcb8);
const theme_10TitleBoxBcgColor = Color(0xFFd1cbc7);
const theme_10firstGradientColor = Color(0xFF172447);
const theme_10middleGradientColor = Color(0xFF294080);
const theme_10lastGradientColor = Color(0xFF3d6fb3);
const theme_10hintColor = theme_10indicatorColor;
const theme_10noteCardColor = Color(0xFF918a84);
const theme_10descriptionColor = Color(0xFF4d5e6e);
const theme_10dividerColor = Color(0xFF172447);
const theme_10unselectedColor = Color(0xFF78726d);
const theme_10titleColor = Color(0xFFfffaed);
const theme_10calendarWeekendColor = Color(0xFF6b6661);
const theme_10indicatorColor = Color(0xFF065abf);

final theme10 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_10MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: theme_10TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: theme_10TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: theme_10TitleBoxBcgColor,
    focusColor: theme_10firstGradientColor,
    unselectedWidgetColor: theme_10unselectedColor,
    primaryColor: theme_10firstGradientColor,
    primaryColorLight: theme_10middleGradientColor,
    primaryColorDark: theme_10lastGradientColor,
    cardColor: theme_10noteCardColor,
    indicatorColor: theme_10indicatorColor,
    shadowColor: theme_10MainBcgColor,
    dialogBackgroundColor: theme_10lastGradientColor,
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
              fontSize: 18, color: theme_10calendarWeekendColor)),

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
              color: theme_10calendarWeekendColor,
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
              color: theme_10descriptionColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_10dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: theme_10indicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_10unselectedColor),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: theme_10unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    // accentIconTheme: const IconThemeData(color: theme_10noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_10indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: Colors.black54,
        elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_10indicatorColor;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_10unselectedColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_10indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_10MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_10unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_10MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_10calendarWeekendColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_10calendarWeekendColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_10calendarWeekendColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_10noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_10calendarWeekendColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_10calendarWeekendColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_10noteCardColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_10TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_10indicatorColor),
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
        activeTrackColor: theme_10indicatorColor,
        inactiveTrackColor: theme_10unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
