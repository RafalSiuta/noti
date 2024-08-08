import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noti/styles/themes/style_exports.dart';

const themeDefAMainBcgColor = Color(0xFFEEEEEE);
const themeDefATitleBoxBcgColor = Color(0xFFf5f5f5);
const themeDefAfirstGradientColor = Color(0xFF00C3FF);
const themeDefAmiddleGradientColor = Color(0xFF1B6BFF);
const themeDefAlastGradientColor = Color(0xFF2525FF);
//const themeDefAnoteCardColor = Color(0xFFf5f5f5); //Color(0xFFdec9ab);f5f5f5
//const themeDefAdescriptionColor = Color(0xFF636363);
const themeDefAdividerColor = Color(0xFF636363);
const themeDefAunselectedColor = Color(0xFF9e9e9e); //595959
//const themeDefATitleBoxBcgColor = Color(0xFFab977b);
const themeDefAindicatorColor = Color(0xFFffca28); // FEA735 f5f5f5
const themeDefBaseTextColor = Color(0xff161616);

final themeDefPickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: themeDefBaseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final themeDefPickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: themeDefBaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w500),
);

final themeDefault = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: themeDefAMainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: Colors.white,
      surface: themeDefATitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: themeDefATitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    canvasColor: themeDefATitleBoxBcgColor,
    focusColor: themeDefAfirstGradientColor,
    unselectedWidgetColor: themeDefAunselectedColor,
    primaryColor: themeDefAfirstGradientColor,
    primaryColorLight: themeDefAmiddleGradientColor,
    primaryColorDark: themeDefAlastGradientColor,
    cardColor: themeDefATitleBoxBcgColor,
    indicatorColor: themeDefAindicatorColor,
    shadowColor: themeDefAMainBcgColor,
    dialogBackgroundColor: themeDefAlastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: GoogleFonts.exo2(
          textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.w700
      )),
      /// list title & small headers
      headlineMedium: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),

      /// date header style
      displayLarge: GoogleFonts.exo2(
          textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              letterSpacing: 2)),

      ///calendar weekend text style
      labelLarge: GoogleFonts.exo2(
          textStyle: const TextStyle(
              fontSize: 18, color: themeDefATitleBoxBcgColor)),

      ///calendar marker style
      labelMedium: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: themeDefBaseTextColor,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),

      ///task description text style
      bodyLarge: GoogleFonts.openSans(
          textStyle: const TextStyle(
              fontSize: 10,
              color: themeDefATitleBoxBcgColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),

      ///note title style
      displayMedium: GoogleFonts.exo2(
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
              color: themeDefBaseTextColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: themeDefAdividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
        color: themeDefAindicatorColor,
        fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: themeDefAunselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: themeDefAunselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900,

        ),
      ),
    ),
   // accentIconTheme: const IconThemeData(color: themeDefATitleBoxBcgColor, size: 18),
    iconTheme: const IconThemeData(color: themeDefAindicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: Colors.black54,
        elevation: 5),
    switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return themeDefAindicatorColor;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: WidgetStateProperty.all(themeDefAunselectedColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: themeDefAindicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: themeDefBaseTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        contentTextStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: themeDefBaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),
        backgroundColor: themeDefAMainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

    //handles color
    // const themeDefAindicatorColor = Color(0xFFffca28);
    // //text colors
    // const themeDefBaseTextColor = Color(0xff161616);
    // //background color:
    // const themeDefATitleBoxBcgColor = Color(0xFFf5f5f5);
    // //unselected element text color
    // const themeDefAunselectedColor = Color(0xFF9e9e9e);
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: themeDefAindicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: themeDefPickersBaseTextStyle,
      hourMinuteTextStyle: themeDefPickersBaseTextStyle,
      dialTextStyle: themeDefPickersBaseTextStyle,
      dialHandColor: themeDefAindicatorColor, // color handles
      hourMinuteTextColor: themeDefBaseTextColor, // text colors
      backgroundColor: themeDefATitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
      return themeDefBaseTextColor; // selected element text color
      }
      return  themeDefAunselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
      return themeDefBaseTextColor; // selected element text color
      }
      return  themeDefAunselectedColor; // unselected element text color
      }),
      entryModeIconColor: themeDefBaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
      return themeDefAindicatorColor.withOpacity(0.5); // selected hour/minute background color
      }
      return  themeDefATitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(themeDefAindicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(themeDefBaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: themeDefBaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(themeDefATitleBoxBcgColor),
        foregroundColor: WidgetStateProperty.all(themeDefAunselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: themeDefBaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: themeDefATitleBoxBcgColor,
      )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(width: .5, color: themeDefATitleBoxBcgColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: themeDefATitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: themeDefATitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: themeDefATitleBoxBcgColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: themeDefATitleBoxBcgColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: themeDefATitleBoxBcgColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // themeDefATitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: themeDefAindicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black54,
      unselectedLabelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: themeDefAindicatorColor,
        inactiveTrackColor: themeDefAunselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
