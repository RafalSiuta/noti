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
const theme_6indicatorColor = Colors.pinkAccent;


final theme6 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_6MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: theme_6TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: theme_6TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: theme_6TitleBoxBcgColor,
    focusColor: theme_6firstGradientColor,
    unselectedWidgetColor: theme_6unselectedColor,
    primaryColor: theme_6firstGradientColor,
    primaryColorLight: theme_6middleGradientColor,
    primaryColorDark: theme_6lastGradientColor,
    cardColor: theme_6noteCardColor,
    indicatorColor: theme_6indicatorColor,
    shadowColor: theme_6MainBcgColor,
    dialogBackgroundColor: theme_6lastGradientColor,
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
              fontSize: 18, color: theme_6calendarWeekendColor)),

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
              color: theme_6calendarWeekendColor,
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
              color: theme_6descriptionColor,
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
        color: theme_6indicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_6unselectedColor),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: theme_6unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    // accentIconTheme: const IconThemeData(color: theme_6noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_6indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: Colors.black54,
        elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_6indicatorColor;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_6unselectedColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_6indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_6MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_6unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_6MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_6calendarWeekendColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_6calendarWeekendColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_6calendarWeekendColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_6noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_6calendarWeekendColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_6calendarWeekendColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_6noteCardColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_6TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_6indicatorColor),
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
        activeTrackColor: theme_6indicatorColor,
        inactiveTrackColor: theme_6unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
