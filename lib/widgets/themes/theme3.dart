import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_3MainBcgColor = Color(0xFFFEFFE0);
const theme_3TitleBoxBcgColor = Color(0xFFfeffe3);
const theme_3ShapeLightGradient = Color(0xFFFF8D47);
const theme_3firstGradientColor = Color(0xFFFF8D47);
const theme_3middleGradientColor = Color(0xFFFFB43B);
const theme_3lastGradientColor = Color(0xFFFFDA2E);
const theme_3noteCardColor = Color(0xFFe8d4a9);
const theme_3dividerColor = Color(0xFF5B4835);
const theme_3shadowColor = Color(0xFFf9fad4);
const theme_3unselectedColor = Color(0xFF574839);
const theme_3weekendText = Color(0xFF9D4F00);

final theme3 = ThemeData(
    scaffoldBackgroundColor: theme_3MainBcgColor,
    backgroundColor: theme_3TitleBoxBcgColor,
    canvasColor: theme_3TitleBoxBcgColor,
    focusColor: theme_3middleGradientColor,
    unselectedWidgetColor: theme_3unselectedColor,
    primaryColor: theme_3firstGradientColor,
    primaryColorLight: theme_3middleGradientColor,
    primaryColorDark: theme_3lastGradientColor,
    cardColor: theme_3noteCardColor, //FF6D24
    indicatorColor: Colors.redAccent,
    toggleableActiveColor: Colors.white,
    shadowColor: theme_3shadowColor,
    dialogBackgroundColor: theme_3lastGradientColor,
    primarySwatch: Colors.amber,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.exo2(
          textStyle: const TextStyle(
        color: Colors.red,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.exo(
        textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.red,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.exo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_3weekendText,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.exo(
          textStyle: const TextStyle(
        fontSize: 18,
        color: theme_3weekendText,
      )),

      ///calendar marker style
      subtitle2: GoogleFonts.exo(
          textStyle: const TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyText1: GoogleFonts.exo(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_3weekendText,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.exo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_3dividerColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.exo(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_3dividerColor,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_3dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: Colors.redAccent,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_3unselectedColor),
      selectedLabelTextStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            color: theme_3unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    accentIconTheme: const IconThemeData(color: theme_3noteCardColor, size: 18),
    iconTheme: const IconThemeData(color: Colors.redAccent, size: 18),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.redAccent;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_3MainBcgColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.redAccent,
    ),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_3MainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_3unselectedColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: theme_3MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_3dividerColor,
      )),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: .5, color: theme_3dividerColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_3dividerColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_3noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_3dividerColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_3dividerColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_3dividerColor,
      ),
    ),
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
          borderSide: BorderSide(width: 2.0, color: Colors.redAccent),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: Colors.red,
      unselectedLabelColor: theme_3unselectedColor,
      unselectedLabelStyle: GoogleFonts.exo(
        textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.red,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.exo(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_3unselectedColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: Colors.redAccent,
        inactiveTrackColor: theme_3unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
