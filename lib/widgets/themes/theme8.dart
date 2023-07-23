import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_8MainBcgColor = Color(0xFF321E25);
const theme_8TitleBoxBcgColor = Color(0xFF472B35);
const theme_8firstGradientColor = Color(0xFFEE4540);
const theme_8middleGradientColor = Color(0xFFC72C41);
const theme_8lastGradientColor = Color(0xFF500B28);
const theme_8hintColor = theme_8indicatorColor;
const theme_8noteCardColor = Color(0xFF7A2846);
const theme_8descriptionColor = Color(0xFFA0A0A0);
const theme_8dividerColor = Color(0xFF636363);
const theme_8unselectedColor = Color(0xFF201318);
const theme_8titleColor = Color(0xFFD3D1CC);
const theme_8calendarWeekendColor = Color(0xFFD3D1CC);
const theme_8indicatorColor = Colors.deepOrange;

final theme8 = ThemeData(
    scaffoldBackgroundColor: theme_8MainBcgColor,
    backgroundColor: theme_8TitleBoxBcgColor,
    canvasColor: theme_8TitleBoxBcgColor,
    focusColor: theme_8middleGradientColor,
    unselectedWidgetColor: theme_8unselectedColor,
    primaryColor: theme_8firstGradientColor,
    primaryColorLight: theme_8middleGradientColor,
    primaryColorDark: theme_8lastGradientColor,
    cardColor: theme_8noteCardColor,
    indicatorColor: theme_8indicatorColor,
    toggleableActiveColor: theme_8titleColor,
    shadowColor: theme_8MainBcgColor,
    dialogBackgroundColor: theme_8lastGradientColor,
    primarySwatch: Colors.red,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.ubuntu(
          textStyle: const TextStyle(
        color: theme_8titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.ubuntu(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_8titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_8titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_8calendarWeekendColor)),

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
              color: theme_8calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.ubuntu(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_8titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_8calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_8dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: theme_8indicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_8unselectedColor),
      selectedLabelTextStyle: GoogleFonts.ubuntu(
        textStyle: const TextStyle(
            color: theme_8titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.ubuntu(
        textStyle: const TextStyle(
            color: theme_8unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_8noteCardColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_8hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_8noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_8noteCardColor,
      ),
      helperStyle: TextStyle(
        color: theme_8calendarWeekendColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_8noteCardColor,
      ),
    ),
    accentIconTheme: const IconThemeData(color: theme_8noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_8indicatorColor, size: 18),
    cardTheme: const CardTheme(shadowColor: theme_8titleColor, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_8indicatorColor;
            } else {
              return theme_8titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_8MainBcgColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_8indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_8MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_8unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_8MainBcgColor,
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
          borderSide: BorderSide(width: 2.0, color: theme_8indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_8titleColor,
      unselectedLabelColor: theme_8unselectedColor,
      unselectedLabelStyle: GoogleFonts.ubuntu(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_8unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.ubuntu(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_8titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_8indicatorColor,
        inactiveTrackColor: theme_8unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
