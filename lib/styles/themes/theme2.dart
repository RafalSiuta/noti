import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme2MainBcgColor = Color(0xFFE6E6E6);
const theme2TitleBoxBcgColor = Color(0xFFF8F8F8);

const theme2FirstGradientColor = Color(0xFF979696);
const theme2MiddleGradientColor = Color(0xFF7B7B7B);
const theme2LastGradientColor = Color(0xFF575757);
const theme2UnselectedTaskIcon = Color(0xFF5D5D5D);
const theme2OutlineColor = Colors.transparent;
const theme2DividerColor = Color(0xFF636363);
const theme2UnselectedColor = Color(0xFF666666);
const theme2ShadowColor = Color(0xFFC0C0C0);

const theme2IndicatorColor = Color(0xFFEDBB4C);
const theme2CalendarMarkerColorOne = Color(0xFFFF5722);// 3F51B5 EF6C00
const theme2CalendarMarkerColorTwo = Color(0xFFFD842E);// 3F51B5 EF6C00

const theme2BaseTextColor = Color(0xff161616);
const theme2BtnTextColor = Color(0xff161616);

const theme2PickerTextColor = Color(0xFF575757);


final theme2PickersBaseTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme2PickerTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme2PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme2BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme2LargeHeaderTextStyle  = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: theme2BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme2SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme2BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme2CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme2BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme2ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme2BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme2UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme2UnselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme2DividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme2CalendarDayWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme2UnselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme2DividerColor));

//next month text style:
final theme2CalendarNextMonthTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme2UnselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme2UnselectedColor));

final theme2CalendarWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme2UnselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme2DividerColor));



final theme2 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme2MainBcgColor,
    colorScheme: const ColorScheme(
      primary: theme2BtnTextColor,
      secondary: theme2TitleBoxBcgColor,
        primaryFixed:  theme2CalendarMarkerColorOne,
        secondaryFixed:  theme2CalendarMarkerColorTwo,
      surface: theme2TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: theme2UnselectedTaskIcon,
      onSurface: theme2TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
        shadow: theme2LastGradientColor,
        outline: theme2OutlineColor
    ),
    canvasColor: theme2TitleBoxBcgColor,
    focusColor: theme2FirstGradientColor,
    unselectedWidgetColor: theme2UnselectedColor,
    primaryColor: theme2FirstGradientColor,
    primaryColorLight: theme2MiddleGradientColor,
    primaryColorDark: theme2LastGradientColor,
    cardColor: theme2TitleBoxBcgColor,
    indicatorColor: theme2IndicatorColor,
    shadowColor: theme2ShadowColor,
    dialogBackgroundColor: theme2LastGradientColor,
    primarySwatch: Colors.blue,
    highlightColor:Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme2LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme2SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme2CardTitleTextStyle,
      ///unselected text
      displayMedium: theme2UnselectedTextStyle,
      //content text style
      bodyMedium: theme2ContentTextStyle,
      ///calendar default text style
      labelLarge: theme2CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme2CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme2CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme2IndicatorColor,
      selectionColor: theme2UnselectedColor,
      cursorColor: theme2IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme2DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme2IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme2UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: theme2BaseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: theme2UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme2IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme2UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme2UnselectedColor;
          } else {
            return theme2ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme2IndicatorColor;
          } else {
            return theme2UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme2UnselectedColor;
          } else {
            return theme2ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme2IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme2SubtitleHeaderTextStyle,
        contentTextStyle: theme2ContentTextStyle,
        backgroundColor: theme2MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme2FirstGradientColor,
      headerHeadlineStyle: theme2PickersTitleTextStyle,
      headerForegroundColor: theme2BaseTextColor,
      weekdayStyle: theme2PickersBaseTextStyle,
      dayStyle: theme2PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme2IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme2BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme2BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme2TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme2UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme2BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme2UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme2BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme2BaseTextColor; // selected element text color
        }
        return  theme2UnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme2IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme2IndicatorColor.withOpacity(0.5);
        }
        return  theme2UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme2IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme2BaseTextColor; // selected element text color
        }
        return  theme2UnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme2IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme2PickersBaseTextStyle,
      hourMinuteTextStyle: theme2PickersBaseTextStyle,
      dialTextStyle: theme2PickersBaseTextStyle,
      dialHandColor: theme2IndicatorColor, // color handles
      hourMinuteTextColor: theme2BaseTextColor, // text colors
      backgroundColor: theme2TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme2BaseTextColor; // selected element text color
        }
        return  theme2UnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme2BaseTextColor; // selected element text color
        }
        return  theme2UnselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme2BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme2IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme2TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme2IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme2BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme2BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme2TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme2UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme2BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme2UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme2TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme2UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme2TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme2TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme2UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme2UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme2UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme2IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme2BaseTextColor,
      unselectedLabelColor: theme2UnselectedColor,
      unselectedLabelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme2UnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme2BaseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme2IndicatorColor,
        inactiveTrackColor: theme2UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

