import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_3MainBcgColor = Color(0xFFFEFFE0);
const theme_3TitleBoxBcgColor = Color(0xFFfeffe3);

const theme_3ShapeLightGradient = Color(0xFFFF8D47);

const theme_3firstGradientColor = Color(0xFFFF8D47);
const theme_3middleGradientColor = Color(0xFFFFB43B);
const theme_3lastGradientColor = Color(0xFFFFDA3E);

const theme_3noteCardColor = Color(0xFFe8d4a9);
const theme_3dividerColor = Color(0xFF5B4835);
const theme_3shadowColor = Color(0xFFf9fad4);
const theme_3unselectedColor = Color(0xFF574839);
const theme_3weekendText = Color(0xFF9D4F00);
const theme_3indicatorColor = Color(0xFFEDBB4C);

const theme_3descriptionColor = Color(0xFF5B4835);



final theme3 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_3MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: theme_3TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: theme_3TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: theme_3TitleBoxBcgColor,
    focusColor: theme_3middleGradientColor,
    unselectedWidgetColor: theme_3unselectedColor,
    primaryColor: theme_3firstGradientColor,
    primaryColorLight: theme_3middleGradientColor,
    primaryColorDark: theme_3lastGradientColor,
    cardColor: theme_3middleGradientColor,
    indicatorColor: Colors.amber,
    shadowColor: theme_3shadowColor,
    dialogBackgroundColor: theme_3lastGradientColor,
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
            color: theme_3noteCardColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      displayLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_3lastGradientColor,
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
              color: theme_3noteCardColor,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_3lastGradientColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      displayMedium: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_3descriptionColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
              overflow: TextOverflow.ellipsis)),

      ///note description text style
      bodyMedium: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_3descriptionColor,
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
        color: Colors.amber,
      ),
      unselectedIconTheme: const IconThemeData(color: theme_3unselectedColor),
      selectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: theme_3unselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900),
      ),
    ),
    //accentIconTheme: const IconThemeData(color: theme_3noteCardColor, size: 18),
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
        trackColor: MaterialStateProperty.all(theme_3MainBcgColor)),
    floatingActionButtonTheme:
    const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_3noteCardColor,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_3noteCardColor,
              fontSize: 13,
              fontWeight: FontWeight.w400),
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
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: Colors.black, fontSize: 30),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_3noteCardColor,
      ),
      labelStyle: TextStyle(
        color: theme_3noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_3noteCardColor,
        fontSize: 8.0,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_3noteCardColor,
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
      unselectedLabelColor: theme_3unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 13,
            color: theme_3unselectedColor,
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
        activeTrackColor: theme_3indicatorColor,
        inactiveTrackColor: theme_3unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
