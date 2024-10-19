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
const theme_5unselectedColor = Color(0xFF8D8D8D);
const theme_5shadowColor = Color(0xFFCDCDCD);
const theme_5indicatorColor = Colors.orangeAccent;

const theme_5baseTextColor = Color(0xFF003028);
const theme_5UnselectedTaskIcon = Color(0xFF075F52);

final theme_5PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme_5baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_5PickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme_5baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_5largeHeaderTextStyle  = GoogleFonts.exo2(
    textStyle: const TextStyle(
        color: theme_5baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_5subtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_5baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_5cardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_5baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_5contentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_5baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_5unselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_5unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_5dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_5calendarDayWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_5unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_5dividerColor));

//next month text style:
final theme_5calendarNextMonthTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_5indicatorColor,//theme_5unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_5unselectedColor));

final theme_5calendarWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_5indicatorColor,//theme_5unselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_5dividerColor));



final theme5 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_5MainBcgColor,
    colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: theme_5TitleBoxBcgColor,
        surface: theme_5TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme_5UnselectedTaskIcon,
        onSurface: theme_5TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme_5UnselectedTaskIcon
    ),
    canvasColor: theme_5TitleBoxBcgColor,
    focusColor: theme_5firstGradientColor,
    unselectedWidgetColor: theme_5unselectedColor,
    primaryColor: theme_5firstGradientColor,
    primaryColorLight: theme_5middleGradientColor,
    primaryColorDark: theme_5lastGradientColor,
    cardColor: theme_5TitleBoxBcgColor,
    indicatorColor: theme_5indicatorColor,
    shadowColor: theme_5shadowColor,
    dialogBackgroundColor: theme_5lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_5largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_5subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_5cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_5unselectedTextStyle,
      //content text style
      bodyMedium: theme_5contentTextStyle,
      ///calendar default text style
      labelLarge: theme_5calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_5calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_5calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme_5indicatorColor,
      selectionColor: theme_5unselectedColor,
      cursorColor: theme_5indicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_5dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_5indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_5unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_5baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_5unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_5indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_5unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_5unselectedColor;
          } else {
            return theme_5shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_5indicatorColor;
          } else {
            return theme_5unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_5unselectedColor;
          } else {
            return theme_5shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_5indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_5subtitleHeaderTextStyle,
        contentTextStyle: theme_5contentTextStyle,
        backgroundColor: theme_5MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_5indicatorColor,
      headerHeadlineStyle: theme_5PickersTitleTextStyle,
      headerForegroundColor: theme_5baseTextColor,
      weekdayStyle: theme_5PickersBaseTextStyle,
      dayStyle: theme_5PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_5indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_5baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_5baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_5TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_5unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme_5baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_5unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_5baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_5baseTextColor; // selected element text color
        }
        return  theme_5unselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_5indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_5indicatorColor.withOpacity(0.5);
        }
        return  theme_5unselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_5indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_5baseTextColor; // selected element text color
        }
        return  theme_5unselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_5indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_5PickersBaseTextStyle,
      hourMinuteTextStyle: theme_5PickersBaseTextStyle,
      dialTextStyle: theme_5PickersBaseTextStyle,
      dialHandColor: theme_5indicatorColor, // color handles
      hourMinuteTextColor: theme_5baseTextColor, // text colors
      backgroundColor: theme_5TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_5baseTextColor; // selected element text color
        }
        return  theme_5unselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_5baseTextColor; // selected element text color
        }
        return  theme_5unselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme_5baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_5indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_5TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_5indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_5baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_5baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_5TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_5unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme_5baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_5unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_5TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_5unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_5TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_5TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_5unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_5unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_5unselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme_5indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_5baseTextColor,
      unselectedLabelColor: theme_5unselectedColor,
      unselectedLabelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_5unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_5baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_5indicatorColor,
        inactiveTrackColor: theme_5unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

