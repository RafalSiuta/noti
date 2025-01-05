import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme6MainBcgColor = Color(0xFF24262E);
const theme6TitleBoxBcgColor = Color(0xFF2C303A);

const theme6FirstGradientColor = Color(0xFF59647D);
const theme6MiddleGradientColor = Color(0xFF444C5F);
const theme6LastGradientColor = Color(0xFF2A2F3C);
const theme6UnselectedTaskIcon = Color(0xFF222630);
const theme6OutlineColor = Color(0xFF24262E);

const theme6DividerColor = Color(0xFF444C5F);
const theme6UnselectedColor = Color(0xFF101015);
const theme6ShadowColor = Color(0xFF1F2229);

const theme6IndicatorColor = Color(0xFFFBC02D);// 3F51B5 EF6C00
const theme6CalendarMarkerColorOne = Color(0xFFDD4822);// 3F51B5 EF6C00
const theme6CalendarMarkerColorTwo = Color(0xFFFD842E);// 3F51B5 EF6C00

const theme6BaseTextColor = Color(0xffb1b6c4);
const theme6BtnTextColor = Color(0xff16181D);
const theme6PickerTextColor = Color(0xffA0A6B1);

final theme6PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme6PickerTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w300),
);

final theme6PickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme6BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w300),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme6LargeHeaderTextStyle  = GoogleFonts.exo2(
    textStyle: const TextStyle(
        color: theme6BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w800
    ));
//Subtitle header:
final TextStyle theme6SubtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme6BaseTextColor,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme6CardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme6BaseTextColor,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme6ContentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme6BaseTextColor,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme6UnselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme6UnselectedColor,
      fontWeight: FontWeight.w300,
      decorationColor: theme6UnselectedColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme6CalendarDayWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme6IndicatorColor,
        fontWeight: FontWeight.w300,
        decorationColor: theme6DividerColor));

//next month text style:
final theme6CalendarNextMonthTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme6BaseTextColor,
        fontWeight: FontWeight.w100,
        decorationColor: theme6UnselectedColor));

final theme6CalendarWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme6IndicatorColor,
        fontWeight: FontWeight.w300,
        decorationColor: theme6DividerColor));



final theme6 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme6MainBcgColor,
    colorScheme: const ColorScheme(
      primary: theme6BtnTextColor,
      secondary: theme6BaseTextColor,
      primaryFixed: theme6CalendarMarkerColorOne,
      secondaryFixed: theme6CalendarMarkerColorTwo,
      surface: theme6TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: theme6UnselectedTaskIcon,
      onSurface: theme6TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
      shadow: theme6LastGradientColor,
        outline: theme6OutlineColor
      // outline: theme6IndicatorColor
    ),
    canvasColor: theme6TitleBoxBcgColor,
    focusColor: theme6FirstGradientColor,
    unselectedWidgetColor: theme6UnselectedColor,
    primaryColor: theme6FirstGradientColor,
    primaryColorLight: theme6MiddleGradientColor,
    primaryColorDark: theme6LastGradientColor,
    cardColor: theme6TitleBoxBcgColor,
    indicatorColor: theme6IndicatorColor,
    shadowColor: theme6ShadowColor,
    dialogBackgroundColor: theme6LastGradientColor,
    primarySwatch: Colors.blue,
    highlightColor:Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme6LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme6SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme6CardTitleTextStyle,
      ///unselected text
      displayMedium: theme6UnselectedTextStyle,
      //content text style
      bodyMedium: theme6ContentTextStyle,
      ///calendar default text style
      labelLarge: theme6CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme6CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme6CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme6IndicatorColor,
      selectionColor: theme6UnselectedColor,
      cursorColor: theme6IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme6DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme6IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme6UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
          color: theme6BaseTextColor, fontSize: 18, fontWeight: FontWeight.w800,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
          color: theme6UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w600,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme6IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme6UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme6UnselectedColor;
          } else {
            return theme6ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme6IndicatorColor;
          } else {
            return theme6UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme6UnselectedColor;
          } else {
            return theme6ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme6IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme6SubtitleHeaderTextStyle,
        contentTextStyle: theme6ContentTextStyle,
        backgroundColor: theme6MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme6MiddleGradientColor,
      headerHeadlineStyle: theme6PickersTitleTextStyle,
      headerForegroundColor: theme6BaseTextColor,
      weekdayStyle: theme6PickersBaseTextStyle,
      dayStyle: theme6PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme6IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme6BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme6BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w100),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme6TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme6PickerTextColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme6BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w100),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme6UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme6BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme6UnselectedColor; // selected element text color
        }
        return  theme6PickerTextColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme6IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme6IndicatorColor.withOpacity(0.5);
        }
        return  theme6UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme6IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme6IndicatorColor; // selected element text color
        }
        return  theme6PickerTextColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme6IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme6PickersBaseTextStyle,
      hourMinuteTextStyle: theme6PickersBaseTextStyle,
      dialTextStyle: theme6PickersBaseTextStyle,
      dialHandColor: theme6IndicatorColor, // color handles
      hourMinuteTextColor: theme6BaseTextColor, // text colors
      backgroundColor: theme6TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme6BaseTextColor; // selected element text color
        }
        return  theme6PickerTextColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme6UnselectedColor; // selected element text color
        }
        return  theme6PickerTextColor; // unselected element text color
      }),
      entryModeIconColor: theme6BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme6IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme6TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme6IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme6BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme6BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w100),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme6TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme6PickerTextColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme6BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w100),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme6UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme6TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme6UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme6TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme6TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme6BaseTextColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme6UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme6UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme6IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme6BaseTextColor,
      unselectedLabelColor: theme6UnselectedColor,
      unselectedLabelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme6UnselectedColor,
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme6BaseTextColor,
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme6IndicatorColor,
        inactiveTrackColor: theme6UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

