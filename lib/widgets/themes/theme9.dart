import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_9MainBcgColor = Color(0xFFebeded);
const theme_9TitleBoxBcgColor = Color(0xFFf7f7f7);
const theme_9firstGradientColor = Color(0xFF39d4fa);
const theme_9middleGradientColor = Color(0xFF0463ca);
const theme_9lastGradientColor = Color(0xFF0c59a7);
const theme_9hintColor = theme_9indicatorColor;
const theme_9noteCardColor = Color(0xFF68CAFB);
const theme_9descriptionColor = Color(0xFF3a4b4f);
const theme_9dividerColor = Color(0xFF303d41);
const theme_9unselectedColor = Color(0xFFa2aab0);
const theme_9titleColor = Color(0xFF3a4b4f);
const theme_9calendarWeekendColor = Color(0xFF3a4b4f);
const theme_9indicatorColor = Color(0xFF065abf);
const theme_9railUnselected = Color(0xFF607b83);

final theme9 = ThemeData(
    scaffoldBackgroundColor: theme_9MainBcgColor,
    backgroundColor: theme_9TitleBoxBcgColor,
    canvasColor: theme_9TitleBoxBcgColor,
    focusColor: theme_9middleGradientColor,
    unselectedWidgetColor: theme_9unselectedColor,
    primaryColor: theme_9firstGradientColor,
    primaryColorLight: theme_9middleGradientColor,
    primaryColorDark: theme_9lastGradientColor,
    cardColor: theme_9noteCardColor,
    indicatorColor: theme_9indicatorColor,
    toggleableActiveColor: Colors.white,
    shadowColor: theme_9MainBcgColor,
    dialogBackgroundColor: theme_9lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.nunito(
          textStyle: const TextStyle(
        color: theme_9titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.nunito(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_9titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_9titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18, color: theme_9calendarWeekendColor)),

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
              color: theme_9calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.nunito(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_9titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_9calendarWeekendColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_9dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: theme_9indicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_9railUnselected),
      selectedLabelTextStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
            color: theme_9titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
            color: theme_9railUnselected,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_9noteCardColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_9hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_9noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_9noteCardColor,
      ),
      helperStyle: TextStyle(
        color: theme_9calendarWeekendColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_9noteCardColor,
      ),
    ),
    accentIconTheme: const IconThemeData(color: theme_9noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_9indicatorColor, size: 18),
    cardTheme: const CardTheme(shadowColor: theme_9titleColor, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_9indicatorColor;
            } else {
              return theme_9titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_9MainBcgColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_9indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_9MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_9unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_9MainBcgColor,
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
          borderSide: BorderSide(width: 2.0, color: theme_9indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_9titleColor,
      unselectedLabelColor: theme_9unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_9unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_9titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_9indicatorColor,
        inactiveTrackColor: theme_9unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
