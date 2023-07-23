import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_41MainBcgColor = Color(0xFF34333d);
const theme_41TitleBoxBcgColor = Color(0xFF3a3440);
const theme_41firstGradientColor = Color(0xFFc1cf2d);
const theme_41middleGradientColor = Color(0xFF69C98E);
const theme_41lastGradientColor = Color(0xFF126370);
const theme_41hintColor = theme_41indicatorColor;
const theme_41noteCardColor = Color(0xFF354a52);
const theme_41descriptionColor = Colors.white;
const theme_41dividerColor = Color(0xFFDCDA2E);
const theme_41unselectedColor = Color(0xFF201f24);
const theme_41titleColor = Colors.white;
const theme_41indicatorColor = Colors.orangeAccent;

final theme4 = ThemeData(
    scaffoldBackgroundColor: theme_41MainBcgColor,
    backgroundColor: theme_41TitleBoxBcgColor,
    canvasColor: theme_41TitleBoxBcgColor,
    focusColor: theme_41middleGradientColor,
    unselectedWidgetColor: theme_41unselectedColor,
    primaryColor: theme_41firstGradientColor,
    primaryColorLight: theme_41middleGradientColor,
    primaryColorDark: theme_41lastGradientColor,
    cardColor: theme_41noteCardColor,
    indicatorColor: theme_41indicatorColor,
    toggleableActiveColor: Colors.white,
    shadowColor: theme_41MainBcgColor,
    dialogBackgroundColor: theme_41lastGradientColor,
    primarySwatch: Colors.teal,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.gruppo(
          textStyle: const TextStyle(
        color: theme_41titleColor,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_41titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.gruppo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_41titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.gruppo(
          textStyle: const TextStyle(fontSize: 18, color: theme_41titleColor)),

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
              color: theme_41titleColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.gruppo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_41titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_41descriptionColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_41dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: theme_41indicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_41unselectedColor),
      selectedLabelTextStyle: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            color: theme_41titleColor,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.gruppo(
        textStyle: const TextStyle(
            color: theme_41unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    accentIconTheme:
        const IconThemeData(color: theme_41noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_41indicatorColor, size: 18),
    cardTheme:
        const CardTheme(shadowColor: theme_41unselectedColor, elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_41indicatorColor;
            } else {
              return theme_41titleColor;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_41MainBcgColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_41indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_41MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_41unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_41TitleBoxBcgColor,
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
          borderSide: BorderSide(width: 2.0, color: theme_41indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_41titleColor,
      unselectedLabelColor: theme_41unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_41unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_41titleColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_41dividerColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_41hintColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_41noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_41noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_41titleColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_41noteCardColor,
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_41indicatorColor,
        inactiveTrackColor: theme_41unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
