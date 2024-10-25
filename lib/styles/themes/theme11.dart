import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme11MainBcgColor = Color(0xFFE6E6E6);
const theme11TitleBoxBcgColor = Color(0xFFF8F8F8);

const theme11FirstGradientColor = Color(0xFF979696);
const theme11MiddleGradientColor = Color(0xFF7B7B7B);
const theme11LastGradientColor = Color(0xFF575757);
const theme11UnselectedTaskIcon = Color(0xFF5D5D5D);

const theme11DividerColor = Color(0xFF636363);
const theme11UnselectedColor = Color(0xFF666666);
const theme11ShadowColor = Color(0xFFC0C0C0);

const theme11IndicatorColor = Color(0xFFEDBB4C);

const theme11BaseTextColor = Color(0xff161616);
const theme11BtnTextColor = Color(0xff161616);

final theme11PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme11BaseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme11PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme11BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme11LargeHeaderTextStyle  = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: theme11BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme11SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme11BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme11CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme11BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme11ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme11BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme11UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme11UnselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme11DividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme11CalendarDayWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme11UnselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme11DividerColor));

//next month text style:
final theme11CalendarNextMonthTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme11UnselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme11UnselectedColor));

final theme11CalendarWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme11UnselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme11DividerColor));



final theme11 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme11MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme11BtnTextColor,
        secondary: theme11TitleBoxBcgColor,
        surface: theme11TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme11UnselectedTaskIcon,
        onSurface: theme11TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme11LastGradientColor
    ),
    canvasColor: theme11TitleBoxBcgColor,
    focusColor: theme11FirstGradientColor,
    unselectedWidgetColor: theme11UnselectedColor,
    primaryColor: theme11FirstGradientColor,
    primaryColorLight: theme11MiddleGradientColor,
    primaryColorDark: theme11LastGradientColor,
    cardColor: theme11TitleBoxBcgColor,
    indicatorColor: theme11IndicatorColor,
    shadowColor: theme11ShadowColor,
    dialogBackgroundColor: theme11LastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme11LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme11SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme11CardTitleTextStyle,
      ///unselected text
      displayMedium: theme11UnselectedTextStyle,
      //content text style
      bodyMedium: theme11ContentTextStyle,
      ///calendar default text style
      labelLarge: theme11CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme11CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme11CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme11IndicatorColor,
      selectionColor: theme11UnselectedColor,
      cursorColor: theme11IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme11DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme11IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme11UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme11BaseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme11UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme11IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme11UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme11UnselectedColor;
          } else {
            return theme11ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme11IndicatorColor;
          } else {
            return theme11UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme11UnselectedColor;
          } else {
            return theme11ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme11IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme11SubtitleHeaderTextStyle,
        contentTextStyle: theme11ContentTextStyle,
        backgroundColor: theme11MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme11IndicatorColor,
      headerHeadlineStyle: theme11PickersTitleTextStyle,
      headerForegroundColor: theme11BaseTextColor,
      weekdayStyle: theme11PickersBaseTextStyle,
      dayStyle: theme11PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme11IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme11BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme11BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme11TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme11UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme11BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme11UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme11BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme11BaseTextColor; // selected element text color
        }
        return  theme11UnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme11IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme11IndicatorColor.withOpacity(0.5);
        }
        return  theme11UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme11IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme11BaseTextColor; // selected element text color
        }
        return  theme11UnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme11IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme11PickersBaseTextStyle,
      hourMinuteTextStyle: theme11PickersBaseTextStyle,
      dialTextStyle: theme11PickersBaseTextStyle,
      dialHandColor: theme11IndicatorColor, // color handles
      hourMinuteTextColor: theme11BaseTextColor, // text colors
      backgroundColor: theme11TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme11BaseTextColor; // selected element text color
        }
        return  theme11UnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme11BaseTextColor; // selected element text color
        }
        return  theme11UnselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme11BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme11IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme11TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme11IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme11BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme11BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme11TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme11UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme11BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme11UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme11TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme11UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme11TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme11TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme11UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme11UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme11UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme11IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme11BaseTextColor,
      unselectedLabelColor: theme11UnselectedColor,
      unselectedLabelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme11UnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme11BaseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme11IndicatorColor,
        inactiveTrackColor: theme11UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

