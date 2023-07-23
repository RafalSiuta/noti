import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_7MainBcgColor = Color(0xFF423D33);
const theme_7TitleBoxBcgColor = Color(0xFF554F41);
const theme_7firstGradientColor = Color(0xFF5D4028);
const theme_7middleGradientColor = Color(0xFFBC8355);
const theme_7lastGradientColor = Color(0xFFFCD5B5);
const theme_7hintColor = Colors.orange;
const theme_7noteCardColor = Color(0xFF625D52);
const theme_7descriptionColor = Color(0xFFA0A0A0);
const theme_7dividerColor = Color(0xFF636363);
const theme_7unselectedColor = Color(0xFF27241D);
const theme_7titleColor = Color(0xFFD3D1CC);
const theme_7calendarWeekendColor = Color(0xFFD3D1CC);

final theme7 = ThemeData(
    scaffoldBackgroundColor: theme_7MainBcgColor,
    backgroundColor: theme_7TitleBoxBcgColor,
    canvasColor: theme_7TitleBoxBcgColor,
    focusColor: theme_7middleGradientColor,
    unselectedWidgetColor: theme_7unselectedColor,
    primaryColor: theme_7firstGradientColor,
    primaryColorLight: theme_7middleGradientColor,
    primaryColorDark: theme_7lastGradientColor,
    cardColor: theme_7noteCardColor,
    indicatorColor: Colors.orange,
    toggleableActiveColor: theme_7titleColor,
    shadowColor: theme_7MainBcgColor,
    dialogBackgroundColor: theme_7lastGradientColor,
    primarySwatch: Colors.orange,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.rajdhani(
          textStyle: const TextStyle(
        color: theme_7titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.rajdhani(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_7titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.rajdhani(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_7titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.rajdhani(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_7calendarWeekendColor)),

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
              color: theme_7calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.rajdhani(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_7titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_7calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_7dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: Colors.orange,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_7unselectedColor),
      selectedLabelTextStyle: GoogleFonts.rajdhani(
        textStyle: const TextStyle(
            color: theme_7titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.rajdhani(
        textStyle: const TextStyle(
            color: theme_7unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_7noteCardColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_7hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_7noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_7noteCardColor,
      ),
      helperStyle: TextStyle(
        color: theme_7calendarWeekendColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_7noteCardColor,
      ),
    ),
    accentIconTheme: const IconThemeData(color: theme_7noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: Colors.orange, size: 18),
    cardTheme: const CardTheme(shadowColor: theme_7titleColor, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.orange;
            } else {
              return theme_7titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_7MainBcgColor)),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Colors.orange),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_7MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_7unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_7MainBcgColor,
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
          borderSide: BorderSide(width: 2.0, color: Colors.orange),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_7titleColor,
      unselectedLabelColor: theme_7unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_7unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_7titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: Colors.orange,
        inactiveTrackColor: theme_7unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
