import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_4MainBcgColor = Color(0xFF34333d);
const theme_4TitleBoxBcgColor = Color(0xFF3a3440);
const theme_4firstGradientColor = Color(0xFFc1cf2d);
const theme_4middleGradientColor = Color(0xFF69C98E);
const theme_4lastGradientColor = Color(0xFF126370);
const theme_4hintColor = theme_4indicatorColor;
const theme_4noteCardColor = Color(0xFF354a52);
const theme_4descriptionColor = Colors.white;
const theme_4dividerColor = Color(0xFFDCDA2E);
const theme_4unselectedColor = Color(0xFF201f24);
const theme_4titleColor = Colors.white;
const theme_4indicatorColor = Colors.orangeAccent;



final theme4 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_4MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: theme_4TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: theme_4TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: theme_4TitleBoxBcgColor,
    focusColor: theme_4middleGradientColor,
    unselectedWidgetColor: theme_4unselectedColor,
    primaryColor: theme_4firstGradientColor,
    primaryColorLight: theme_4middleGradientColor,
    primaryColorDark: theme_4lastGradientColor,
    cardColor: theme_4middleGradientColor,
    indicatorColor: Colors.amber,
    shadowColor: Colors.black45,
    dialogBackgroundColor: theme_4lastGradientColor,
    primarySwatch: Colors.amber,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 33,
          )),

      /// list title
      headlineMedium: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_4noteCardColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      displayLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_4lastGradientColor,
              fontWeight: FontWeight.w700,
              letterSpacing: 3)),

      ///calendar weekend text style
      labelLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.amber,
          )),

      ///calendar marker style
      labelMedium: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_4noteCardColor,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_4lastGradientColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      displayMedium: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_4descriptionColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyMedium: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_4descriptionColor,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_4dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: Colors.amber,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_4unselectedColor),
      selectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: theme_4unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    //accentIconTheme: const IconThemeData(color: theme_4noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: Colors.amber, size: 18),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.amber;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_4MainBcgColor)),
    floatingActionButtonTheme:
    const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_4noteCardColor,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_4noteCardColor,
              fontSize: 13,
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: theme_4MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_4dividerColor,
          )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: Colors.black, fontSize: 30),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_4noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_4noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_4noteCardColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_4noteCardColor,
      ),
    ),
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
          borderSide: BorderSide(width: 3.0, color: Colors.amber),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: Colors.black,
      unselectedLabelColor: theme_4unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 13,
            color: theme_4unselectedColor,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_4indicatorColor,
        inactiveTrackColor: theme_4unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
