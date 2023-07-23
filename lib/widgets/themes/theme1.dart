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

final theme1 = ThemeData(
    scaffoldBackgroundColor: kMainBcgColor,
    backgroundColor: kMainTitleBoxColor,
    canvasColor: kShapeLightGradient,
    focusColor: kGreenColorMiddle,
    unselectedWidgetColor: kMainDarkBcgColor,
    primaryColor: kGreenSeeColor,
    primaryColorLight: kSpecialsFontColor,
    primaryColorDark: kYellowColorDark,
    cardColor: kYellowColorVeryLight,
    toggleableActiveColor: kYellowColorVeryLight,
    indicatorColor: Colors.deepOrange,
    shadowColor: kMainBcgColor,
    dialogBackgroundColor: kYellowColorDark,
    primarySwatch: Colors.deepOrange,
    splashColor: Colors.transparent,
    dividerColor: kOperatorsFontColor,
    textTheme: TextTheme(
      /// main big title
      headline1: GoogleFonts.exo2(
          textStyle: const TextStyle(
        color: kYellowColorVeryLight,
        fontSize: 32,
      )),

      /// list title
      headline2: GoogleFonts.exo(
        textStyle: const TextStyle(
            fontSize: 18,
            color: kYellowColorVeryLight,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      headline3: GoogleFonts.exo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: kGreenColorVeryLight,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      subtitle1: GoogleFonts.exo(
          textStyle: const TextStyle(
        fontSize: 18,
        color: Colors.deepOrange,
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
              color: kOperatorsFontColor,
              fontWeight: FontWeight.w200,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      headline4: GoogleFonts.exo(
          textStyle: const TextStyle(
              fontSize: 18,
              color: kMainDarkBcgColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyText2: GoogleFonts.exo(
          textStyle: const TextStyle(
              fontSize: 10,
              color: kMainTitleBoxColor,
              fontWeight: FontWeight.w200,
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
        color: Colors.deepOrange,
      ),
      unselectedIconTheme: const IconThemeData(color: kEnabledIconColorDark),
      selectedLabelTextStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            color: kYellowColorVeryLight,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            color: kEnabledIconColorDark,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    accentIconTheme:
        const IconThemeData(color: kYellowColorVeryLight, size: 18),
    iconTheme: const IconThemeData(
      color: kYellowColorVeryLight,
      size: 18,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(.0),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shadowColor: MaterialStateProperty.all<Color>(kMainBcgColor),
          splashFactory: NoSplash.splashFactory),
    ),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.deepOrange;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(kMainBcgColor)),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Colors.deepOrange),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w200),
        ),
        contentTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: kEnabledIconColorDark,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: kMainTitleBoxColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(width: .5, color: colorDivider)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: kGreenColorMiddle, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: colorDivider,
      ),
      labelStyle: TextStyle(
        color: colorDivider,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: colorDivider,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: colorDivider,
        fontSize: 8.0,
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
          borderSide: BorderSide(width: 2.0, color: Colors.deepOrange),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: kYellowColorVeryLight,
      unselectedLabelColor: Colors.black54,
      unselectedLabelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: kEnabledIconColorDark,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: kYellowColorVeryLight,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: Colors.deepOrange,
        inactiveTrackColor: kEnabledIconColorDark,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
