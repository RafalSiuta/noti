import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_5MainBcgColor = Color(0xFFF8F9F6);
const theme_5TitleBoxBcgColor = Color(0xFFFCFCFB);
const theme_5firstGradientColor = Color(0xFF78f268);
const theme_5middleGradientColor = Color(0xFF0b9c86);
const theme_5lastGradientColor = Color(0xFF087565);
const theme_5hintColor = Color(0xFFF15C9A);
const theme_5noteCardColor = Color(0xFF7fe872);
const theme_5dividerColor = Color(0xFF003028);
const theme_5unselectedColor = Color(0xFF636363);
const theme_5calendarWeekendColor = Color(0xFF003028);
const theme_5calendarDayColor = Color(0xFF003028);
const theme_5dateColor = Color(0xFF003028);
const theme_5titleColor = Color(0xFF003028);

final theme5 = ThemeData(
    scaffoldBackgroundColor: theme_5MainBcgColor,
    backgroundColor: theme_5TitleBoxBcgColor,
    canvasColor: theme_5TitleBoxBcgColor,
    focusColor: theme_5middleGradientColor,
    unselectedWidgetColor: theme_5unselectedColor,
    primaryColor: theme_5firstGradientColor,
    primaryColorLight: theme_5middleGradientColor,
    primaryColorDark: theme_5lastGradientColor,
    cardColor: theme_5noteCardColor,
    indicatorColor: Colors.pinkAccent,
    toggleableActiveColor: Colors.white,
    shadowColor: theme_5MainBcgColor,
    dialogBackgroundColor: theme_5lastGradientColor,
    primarySwatch: Colors.pink,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.gruppo(
          textStyle: const TextStyle(
        color: theme_5titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_5titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.gruppo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_5titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.gruppo(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_5calendarWeekendColor)),

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
              color: theme_5calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.gruppo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_5titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_5calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_5dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: Colors.pinkAccent,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_5unselectedColor),
      selectedLabelTextStyle: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            color: theme_5titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            color: theme_5unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_5calendarWeekendColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_5hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_5noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_5noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_5calendarWeekendColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_5noteCardColor,
      ),
    ),
    accentIconTheme: const IconThemeData(color: theme_5noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: Colors.redAccent, size: 18),
    cardTheme: const CardTheme(shadowColor: theme_5titleColor, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.redAccent;
            } else {
              return theme_5titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_5MainBcgColor)),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Colors.redAccent),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_5MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.openSans(
          textStyle: const TextStyle(
              color: theme_5unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_5MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_4TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: Colors.pinkAccent),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_5titleColor,
      unselectedLabelColor: theme_5unselectedColor,
      unselectedLabelStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_5unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_5titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: Colors.pinkAccent,
        inactiveTrackColor: theme_5unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
