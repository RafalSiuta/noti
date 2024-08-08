import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_2MainBcgColor = Color(0xFFE6E6E6);
const theme_2TitleBoxBcgColor = Color(0xFFF8F8F8);
const theme_2firstGradientColor = Color(0xFF979696);
const theme_2middleGradientColor = Color(0xFF7B7B7B);
const theme_2lastGradientColor = Color(0xFF575757);
const theme_2noteCardColor = Colors.black;
const theme_2descriptionColor = Colors.black;
const theme_2dividerColor = Color(0xFF636363);
const theme_2unselectedColor = Color(0xFF515151);
const theme_2shadowColor = Color(0xFFC0C0C0);
const theme_2indicatorColor = Color(0xFFEDBB4C);

final theme2 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_2MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: theme_2TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: theme_2TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: theme_2TitleBoxBcgColor,
    focusColor: theme_2middleGradientColor,
    unselectedWidgetColor: theme_2unselectedColor,
    primaryColor: theme_2firstGradientColor,
    primaryColorLight: theme_2middleGradientColor,
    primaryColorDark: theme_2lastGradientColor,
    cardColor: theme_2middleGradientColor,
    indicatorColor: Colors.amber,
    shadowColor: theme_2shadowColor,
    dialogBackgroundColor: theme_2lastGradientColor,
    primarySwatch: Colors.amber,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 32,
      )),

      /// list title
      headlineMedium: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 18,
            color: theme_2noteCardColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      displayLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_2lastGradientColor,
              fontWeight: FontWeight.w700,
              letterSpacing: 2)),

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
              color: theme_2noteCardColor,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_2lastGradientColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      displayMedium: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_2descriptionColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyMedium: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_2descriptionColor,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_2dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: Colors.amber,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_2unselectedColor),
      selectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: theme_2unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    //accentIconTheme: const IconThemeData(color: theme_2noteCardColor, size: 18),
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
        trackColor: MaterialStateProperty.all(theme_2MainBcgColor)),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_2noteCardColor,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_2noteCardColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: theme_2MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: theme_2dividerColor,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: Colors.black, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_2noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_2noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_2noteCardColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_2noteCardColor,
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
          borderSide: BorderSide(width: 2.0, color: Colors.amber),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: Colors.black,
      unselectedLabelColor: theme_2unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_2unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: theme_2indicatorColor,
        inactiveTrackColor: theme_2unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
