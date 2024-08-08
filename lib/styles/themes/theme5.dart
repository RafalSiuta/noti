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
const theme_5indicatorColor = Colors.orangeAccent;
const theme_5descriptionColor = Colors.black45;



final theme5 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_5MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: theme_5TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: theme_5TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: theme_5TitleBoxBcgColor,
    focusColor: theme_5middleGradientColor,
    unselectedWidgetColor: theme_5unselectedColor,
    primaryColor: theme_5firstGradientColor,
    primaryColorLight: theme_5middleGradientColor,
    primaryColorDark: theme_5lastGradientColor,
    cardColor: theme_5middleGradientColor,
    indicatorColor: Colors.amber,
    shadowColor: Colors.black45,
    dialogBackgroundColor: theme_5lastGradientColor,
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
            color: theme_5noteCardColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      displayLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_5lastGradientColor,
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
              color: theme_5noteCardColor,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_5lastGradientColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      displayMedium: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_5descriptionColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyMedium: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_5descriptionColor,
              fontWeight: FontWeight.w400,
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
        color: Colors.amber,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_5unselectedColor),
      selectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: theme_5unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    //accentIconTheme: const IconThemeData(color: theme_5noteCardColor, size: 18),
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
        trackColor: MaterialStateProperty.all(theme_5MainBcgColor)),
    floatingActionButtonTheme:
    const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_5noteCardColor,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_5noteCardColor,
              fontSize: 13,
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: theme_5MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_5dividerColor,
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
        color: theme_5noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_5noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_5noteCardColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_5noteCardColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_5TitleBoxBcgColor,
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
      unselectedLabelColor: theme_5unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 13,
            color: theme_5unselectedColor,
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
        activeTrackColor: theme_5indicatorColor,
        inactiveTrackColor: theme_5unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
