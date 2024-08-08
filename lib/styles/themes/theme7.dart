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
const theme_7indicatorColor = Colors.orange;

final theme7 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_7MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: theme_7TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: theme_7TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: theme_7TitleBoxBcgColor,
    focusColor: theme_7firstGradientColor,
    unselectedWidgetColor: theme_7unselectedColor,
    primaryColor: theme_7firstGradientColor,
    primaryColorLight: theme_7middleGradientColor,
    primaryColorDark: theme_7lastGradientColor,
    cardColor: theme_7noteCardColor,
    indicatorColor: theme_7indicatorColor,
    shadowColor: theme_7MainBcgColor,
    dialogBackgroundColor: theme_7lastGradientColor,
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
              fontSize: 18, color: theme_7calendarWeekendColor)),

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
              color: theme_7calendarWeekendColor,
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
              color: theme_7descriptionColor,
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
        color: theme_7indicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_7unselectedColor),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: theme_7unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    // accentIconTheme: const IconThemeData(color: theme_7noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: theme_7indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: Colors.black54,
        elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.selected)) {
              return theme_7indicatorColor;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_7unselectedColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: theme_7indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_7MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_7unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_7MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_7calendarWeekendColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_7calendarWeekendColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_7calendarWeekendColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_7noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_7calendarWeekendColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_7calendarWeekendColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_7noteCardColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_7TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_7indicatorColor),
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
        activeTrackColor: theme_7indicatorColor,
        inactiveTrackColor: theme_7unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
