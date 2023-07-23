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
    scaffoldBackgroundColor: theme_10MainBcgColor,
    backgroundColor: theme_10TitleBoxBcgColor,
    canvasColor: theme_10TitleBoxBcgColor,
    focusColor: theme_10middleGradientColor,
    unselectedWidgetColor: theme_10unselectedColor,
    primaryColor: theme_10firstGradientColor,
    primaryColorLight: theme_10middleGradientColor,
    primaryColorDark: theme_10lastGradientColor,
    cardColor: theme_10noteCardColor,
    indicatorColor: theme_10indicatorColor,
    toggleableActiveColor: Colors.white,
    shadowColor: theme_10MainBcgColor,
    dialogBackgroundColor: theme_10lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.nunito(
          textStyle: const TextStyle(
        color: theme_10titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.nunito(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_10titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_10titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_10calendarWeekendColor)),

      ///calendar marker style
      subtitle2: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyText1: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_10calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_10titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_10TitleBoxBcgColor,
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
      selectedLabelTextStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
            color: theme_10titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
            color: theme_10unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_10noteCardColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_10hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_10noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_10noteCardColor,
      ),
      helperStyle: TextStyle(
        color: theme_10calendarWeekendColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_10noteCardColor,
      ),
    ),
    accentIconTheme:
        const IconThemeData(color: theme_10noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_10indicatorColor, size: 18),
    cardTheme: const CardTheme(shadowColor: theme_10titleColor, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_10indicatorColor;
            } else {
              return theme_10titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_10MainBcgColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_10indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_10MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_10unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_10TitleBoxBcgColor,
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
          borderSide: BorderSide(width: 2.0, color: theme_10indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_10titleColor,
      unselectedLabelColor: theme_10unselectedColor,
      unselectedLabelStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_10unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_10titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_10indicatorColor,
        inactiveTrackColor: theme_10unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
