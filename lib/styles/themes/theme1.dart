import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kMainBcgColor = Color(0xFF222D2F);
const kShapeLightGradient = Color(0xFF314446);
const kMainTitleBoxColor = Color(0xFF293538);
const kMainDarkBcgColor = Color(0xFF1B2425);
const kGreenSeeColor = Color(0xFF00695c);
const kGreenColorMiddle = Color(0xFF4eaf73);
const kGreenColorLight = Color(0xFF60D58C);
const kGreenColorVeryLight = Color(0xFF68f289);
const kYellowColorVeryLight = Color(0xFFfff59d);
const kYellowColorDark = Color(0xFFFFD98D);
const kSpecialsFontColor = Color(0xFF60D58C);
const kOperatorsFontColor = Color(0xFFA0A0A0);
const colorDivider = Color(0xFF636363);
const kEnabledIconColorDark = Color(0xFF17202A);
const kIndicatorColor = Colors.deepOrange;

final theme1 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: kMainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: kMainBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: kMainBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: kMainBcgColor,
    focusColor: kGreenColorVeryLight,
    unselectedWidgetColor: kEnabledIconColorDark,
    primaryColor: kGreenColorVeryLight,
    primaryColorLight: kGreenColorLight,
    primaryColorDark: kGreenColorMiddle,
    cardColor: kYellowColorDark,
    indicatorColor: kIndicatorColor,
    shadowColor: kMainBcgColor,
    dialogBackgroundColor: kGreenColorMiddle,
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
              fontSize: 18, color: kMainTitleBoxColor)),

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
              color: kMainTitleBoxColor,
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
              color: kMainTitleBoxColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: colorDivider,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: kIndicatorColor,
      ),
      unselectedIconTheme: const IconThemeData(color: kEnabledIconColorDark),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: kEnabledIconColorDark,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    // accentIconTheme: const IconThemeData(color: kYellowColorDark, size: 18),
    iconTheme: const IconThemeData(color: kIndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: Colors.black54,
        elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.selected)) {
              return kIndicatorColor;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(kEnabledIconColorDark)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: kIndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: kMainBcgColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: kEnabledIconColorDark,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: kMainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: kMainTitleBoxColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: kMainTitleBoxColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: kMainTitleBoxColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: kYellowColorDark,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: kMainTitleBoxColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: kMainTitleBoxColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: kYellowColorDark,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_12TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: kIndicatorColor),
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
        activeTrackColor: kIndicatorColor,
        inactiveTrackColor: kEnabledIconColorDark,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
