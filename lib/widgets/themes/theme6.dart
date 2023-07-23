import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_6MainBcgColor = Color(0xFF292C35);
const theme_6TitleBoxBcgColor = Color(0xFF323642);
const theme_6firstGradientColor = Color(0xFF9EADC8);
const theme_6middleGradientColor = Color(0xFF8d99b0);
const theme_6lastGradientColor = Color(0xFF5B507A);
const theme_6hintColor = Colors.pinkAccent;
const theme_6noteCardColor = Color(0xFF4a4557);
const theme_6descriptionColor = Color(0xFFA0A0A0);
const theme_6dividerColor = Color(0xFF636363);
const theme_6unselectedColor = Color(0xFF111617);
const theme_6titleColor = Color(0xFFe3e3e3);
const theme_6calendarWeekendColor = Color(0xFFe3e3e3);

final theme6 = ThemeData(
    scaffoldBackgroundColor: theme_6MainBcgColor,
    backgroundColor: theme_6TitleBoxBcgColor,
    canvasColor: theme_6TitleBoxBcgColor,
    focusColor: theme_6middleGradientColor,
    unselectedWidgetColor: theme_6unselectedColor,
    primaryColor: theme_6firstGradientColor,
    primaryColorLight: theme_6middleGradientColor,
    primaryColorDark: theme_6lastGradientColor,
    cardColor: theme_6noteCardColor,
    indicatorColor: Colors.pinkAccent,
    toggleableActiveColor: Colors.white,
    shadowColor: theme_6MainBcgColor,
    dialogBackgroundColor: theme_6lastGradientColor,
    primarySwatch: Colors.pink,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.gruppo(
          textStyle: const TextStyle(
        color: theme_6titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_6titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.gruppo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_6titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.gruppo(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_6calendarWeekendColor)),

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
              color: theme_6calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.gruppo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_6titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_6calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_6dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: Colors.pinkAccent,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_6unselectedColor),
      selectedLabelTextStyle: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            color: theme_6titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            color: theme_6unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_6noteCardColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_6hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_6noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_6noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_6calendarWeekendColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_6noteCardColor,
      ),
    ),
    accentIconTheme: const IconThemeData(color: theme_6noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: Colors.pinkAccent, size: 18),
    cardTheme: const CardTheme(shadowColor: Colors.black54, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.pinkAccent;
            } else {
              return theme_6titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_6MainBcgColor)),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Colors.pinkAccent),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_6MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.openSans(
          textStyle: const TextStyle(
              color: theme_6unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_6MainBcgColor,
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
      labelColor: theme_6titleColor,
      unselectedLabelColor: theme_6unselectedColor,
      unselectedLabelStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_6unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_6titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: Colors.pinkAccent,
        inactiveTrackColor: theme_6unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
