import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme4MainBcgColor = Color(0xFFE6E6E6);
const theme4TitleBoxBcgColor = Color(0xFFF8F8F8);

const theme4FirstGradientColor = Color(0xFF979696);
const theme4MiddleGradientColor = Color(0xFF7B7B7B);
const theme4LastGradientColor = Color(0xFF575757);
const theme4UnselectedTaskIcon = Color(0xFF5D5D5D);

const theme4DividerColor = Color(0xFF636363);
const theme4UnselectedColor = Color(0xFF666666);
const theme4ShadowColor = Color(0xFFC0C0C0);

const theme4IndicatorColor = Color(0xFFEDBB4C);

const theme4BaseTextColor = Color(0xff161616);
const theme4BtnTextColor = Color(0xff161616);

final theme4PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme4BaseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme4PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme4BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme4LargeHeaderTextStyle  = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: theme4BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme4SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme4BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme4CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme4BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme4ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme4BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme4UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme4UnselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme4DividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme4CalendarDayWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme4UnselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme4DividerColor));

//next month text style:
final theme4CalendarNextMonthTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme4UnselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme4UnselectedColor));

final theme4CalendarWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme4UnselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme4DividerColor));



final theme4 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme4MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme4BtnTextColor,
        secondary: theme4TitleBoxBcgColor,
        surface: theme4TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme4UnselectedTaskIcon,
        onSurface: theme4TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme4LastGradientColor
    ),
    canvasColor: theme4TitleBoxBcgColor,
    focusColor: theme4FirstGradientColor,
    unselectedWidgetColor: theme4UnselectedColor,
    primaryColor: theme4FirstGradientColor,
    primaryColorLight: theme4MiddleGradientColor,
    primaryColorDark: theme4LastGradientColor,
    cardColor: theme4TitleBoxBcgColor,
    indicatorColor: theme4IndicatorColor,
    shadowColor: theme4ShadowColor,
    dialogBackgroundColor: theme4LastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme4LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme4SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme4CardTitleTextStyle,
      ///unselected text
      displayMedium: theme4UnselectedTextStyle,
      //content text style
      bodyMedium: theme4ContentTextStyle,
      ///calendar default text style
      labelLarge: theme4CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme4CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme4CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme4IndicatorColor,
      selectionColor: theme4UnselectedColor,
      cursorColor: theme4IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme4DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme4IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme4UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme4BaseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme4UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme4IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme4UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme4UnselectedColor;
          } else {
            return theme4ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme4IndicatorColor;
          } else {
            return theme4UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme4UnselectedColor;
          } else {
            return theme4ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme4IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme4SubtitleHeaderTextStyle,
        contentTextStyle: theme4ContentTextStyle,
        backgroundColor: theme4MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme4IndicatorColor,
      headerHeadlineStyle: theme4PickersTitleTextStyle,
      headerForegroundColor: theme4BaseTextColor,
      weekdayStyle: theme4PickersBaseTextStyle,
      dayStyle: theme4PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme4IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme4BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme4BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme4TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme4UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme4BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme4UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme4BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme4BaseTextColor; // selected element text color
        }
        return  theme4UnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme4IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme4IndicatorColor.withOpacity(0.5);
        }
        return  theme4UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme4IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme4BaseTextColor; // selected element text color
        }
        return  theme4UnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme4IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme4PickersBaseTextStyle,
      hourMinuteTextStyle: theme4PickersBaseTextStyle,
      dialTextStyle: theme4PickersBaseTextStyle,
      dialHandColor: theme4IndicatorColor, // color handles
      hourMinuteTextColor: theme4BaseTextColor, // text colors
      backgroundColor: theme4TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme4BaseTextColor; // selected element text color
        }
        return  theme4UnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme4BaseTextColor; // selected element text color
        }
        return  theme4UnselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme4BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme4IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme4TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme4IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme4BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme4BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme4TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme4UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme4BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme4UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme4TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme4UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme4TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme4TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme4UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme4UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme4UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme4IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme4BaseTextColor,
      unselectedLabelColor: theme4UnselectedColor,
      unselectedLabelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme4UnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme4BaseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme4IndicatorColor,
        inactiveTrackColor: theme4UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

