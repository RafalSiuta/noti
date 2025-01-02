import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme1MainBcgColor = Color(0xFFF7FDFD);
const theme1TitleBoxBcgColor = Color(0xFFFFFFFF);

const theme1FirstGradientColor = Color(0xFFC1EAEB);
const theme1MiddleGradientColor = Color(0xFF8AC3C4);
const theme1LastGradientColor = Color(0xFF6DB3B5);
const theme1UnselectedTaskIcon = Color(0xFF7AB2B4);
const theme1OutlineColor = Color(0xFF90A4A4);

const theme1DividerColor = Color(0xFF0C2627);
const theme1UnselectedColor = Color(0xFF90A4A4);
const theme1ShadowColor = Color(0xFFD5F1F1);

const theme1IndicatorColor = Color(0xFF26B6AB);

const theme1BaseTextColor = Color(0xff0C2627);
const theme1BtnTextColor = Color(0xffFFFFFF);

final theme1PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme1BaseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme1PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme1BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme1LargeHeaderTextStyle  = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: theme1BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme1SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme1BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme1CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme1BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme1ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme1BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme1UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme1UnselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme1DividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme1CalendarDayWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme1UnselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme1DividerColor));

//next month text style:
final theme1CalendarNextMonthTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme1UnselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme1UnselectedColor));

final theme1CalendarWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme1UnselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme1DividerColor));



final theme1 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme1MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme1BtnTextColor,
        secondary: theme1TitleBoxBcgColor,
        surface: theme1TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme1UnselectedTaskIcon,
        onSurface: theme1TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme1LastGradientColor,
        outline: theme1OutlineColor
    ),
    canvasColor: theme1TitleBoxBcgColor,
    focusColor: theme1FirstGradientColor,
    unselectedWidgetColor: theme1UnselectedColor,
    primaryColor: theme1FirstGradientColor,
    primaryColorLight: theme1MiddleGradientColor,
    primaryColorDark: theme1LastGradientColor,
    cardColor: theme1TitleBoxBcgColor,
    indicatorColor: theme1IndicatorColor,
    shadowColor: theme1ShadowColor,
    dialogBackgroundColor: theme1LastGradientColor,
    primarySwatch: Colors.blue,
    highlightColor:Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme1LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme1SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme1CardTitleTextStyle,
      ///unselected text
      displayMedium: theme1UnselectedTextStyle,
      //content text style
      bodyMedium: theme1ContentTextStyle,
      ///calendar default text style
      labelLarge: theme1CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme1CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme1CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme1IndicatorColor,
      selectionColor: theme1UnselectedColor,
      cursorColor: theme1IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme1DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme1IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme1UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme1BaseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme1UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme1IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme1UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme1UnselectedColor;
          } else {
            return theme1ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme1IndicatorColor;
          } else {
            return theme1UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme1UnselectedColor;
          } else {
            return theme1ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme1IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme1SubtitleHeaderTextStyle,
        contentTextStyle: theme1ContentTextStyle,
        backgroundColor: theme1MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme1FirstGradientColor,
      headerHeadlineStyle: theme1PickersTitleTextStyle,
      headerForegroundColor: theme1BaseTextColor,
      weekdayStyle: theme1PickersBaseTextStyle,
      dayStyle: theme1PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme1IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme1BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme1BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme1TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme1UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme1BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme1UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme1BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme1BaseTextColor; // selected element text color
        }
        return  theme1UnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme1IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme1IndicatorColor.withOpacity(0.5);
        }
        return  theme1UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme1IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme1BaseTextColor; // selected element text color
        }
        return  theme1UnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme1IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme1PickersBaseTextStyle,
      hourMinuteTextStyle: theme1PickersBaseTextStyle,
      dialTextStyle: theme1PickersBaseTextStyle,
      dialHandColor: theme1IndicatorColor, // color handles
      hourMinuteTextColor: theme1BaseTextColor, // text colors
      backgroundColor: theme1TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme1BaseTextColor; // selected element text color
        }
        return  theme1UnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme1BaseTextColor; // selected element text color
        }
        return  theme1UnselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme1BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme1IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme1TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme1IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme1BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme1BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme1TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme1UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme1BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme1UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme1TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme1UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme1TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme1TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme1UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme1UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme1UnselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_2TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme1IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme1BaseTextColor,
      unselectedLabelColor: theme1UnselectedColor,
      unselectedLabelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme1UnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme1BaseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme1IndicatorColor,
        inactiveTrackColor: theme1UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

