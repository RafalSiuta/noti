import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme10MainBcgColor = Color(0xFFE6E6E6);
const theme10TitleBoxBcgColor = Color(0xFFF8F8F8);

const theme10FirstGradientColor = Color(0xFF979696);
const theme10MiddleGradientColor = Color(0xFF7B7B7B);
const theme10LastGradientColor = Color(0xFF575757);
const theme10UnselectedTaskIcon = Color(0xFF5D5D5D);

const theme10DividerColor = Color(0xFF636363);
const theme10UnselectedColor = Color(0xFF666666);
const theme10ShadowColor = Color(0xFFC0C0C0);

const theme10IndicatorColor = Color(0xFFEDBB4C);

const theme10BaseTextColor = Color(0xff161616);
const theme10BtnTextColor = Color(0xff161616);

final theme10PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme10BaseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme10PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme10BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme10LargeHeaderTextStyle  = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: theme10BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme10SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme10BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme10CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme10BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme10ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme10BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme10UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme10UnselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme10DividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme10CalendarDayWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme10UnselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme10DividerColor));

//next month text style:
final theme10CalendarNextMonthTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme10UnselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme10UnselectedColor));

final theme10CalendarWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme10UnselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme10DividerColor));



final theme10 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme10MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme10BtnTextColor,
        secondary: theme10TitleBoxBcgColor,
        surface: theme10TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme10UnselectedTaskIcon,
        onSurface: theme10TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme10LastGradientColor
    ),
    canvasColor: theme10TitleBoxBcgColor,
    focusColor: theme10FirstGradientColor,
    unselectedWidgetColor: theme10UnselectedColor,
    primaryColor: theme10FirstGradientColor,
    primaryColorLight: theme10MiddleGradientColor,
    primaryColorDark: theme10LastGradientColor,
    cardColor: theme10TitleBoxBcgColor,
    indicatorColor: theme10IndicatorColor,
    shadowColor: theme10ShadowColor,
    dialogBackgroundColor: theme10LastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme10LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme10SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme10CardTitleTextStyle,
      ///unselected text
      displayMedium: theme10UnselectedTextStyle,
      //content text style
      bodyMedium: theme10ContentTextStyle,
      ///calendar default text style
      labelLarge: theme10CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme10CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme10CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme10IndicatorColor,
      selectionColor: theme10UnselectedColor,
      cursorColor: theme10IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme10DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme10IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme10UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme10BaseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme10UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme10IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme10UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme10UnselectedColor;
          } else {
            return theme10ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme10IndicatorColor;
          } else {
            return theme10UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme10UnselectedColor;
          } else {
            return theme10ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme10IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme10SubtitleHeaderTextStyle,
        contentTextStyle: theme10ContentTextStyle,
        backgroundColor: theme10MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme10IndicatorColor,
      headerHeadlineStyle: theme10PickersTitleTextStyle,
      headerForegroundColor: theme10BaseTextColor,
      weekdayStyle: theme10PickersBaseTextStyle,
      dayStyle: theme10PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme10IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme10BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme10BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme10TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme10UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme10BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme10UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme10BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme10BaseTextColor; // selected element text color
        }
        return  theme10UnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme10IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme10IndicatorColor.withOpacity(0.5);
        }
        return  theme10UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme10IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme10BaseTextColor; // selected element text color
        }
        return  theme10UnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme10IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme10PickersBaseTextStyle,
      hourMinuteTextStyle: theme10PickersBaseTextStyle,
      dialTextStyle: theme10PickersBaseTextStyle,
      dialHandColor: theme10IndicatorColor, // color handles
      hourMinuteTextColor: theme10BaseTextColor, // text colors
      backgroundColor: theme10TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme10BaseTextColor; // selected element text color
        }
        return  theme10UnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme10BaseTextColor; // selected element text color
        }
        return  theme10UnselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme10BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme10IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme10TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme10IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme10BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme10BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme10TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme10UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme10BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme10UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme10TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme10UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme10TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme10TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme10UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme10UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme10UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme10IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme10BaseTextColor,
      unselectedLabelColor: theme10UnselectedColor,
      unselectedLabelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme10UnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme10BaseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme10IndicatorColor,
        inactiveTrackColor: theme10UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

