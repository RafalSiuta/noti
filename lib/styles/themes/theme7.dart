import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme7MainBcgColor = Color(0xFFE6E6E6);
const theme7TitleBoxBcgColor = Color(0xFFF8F8F8);

const theme7FirstGradientColor = Color(0xFF979696);
const theme7MiddleGradientColor = Color(0xFF7B7B7B);
const theme7LastGradientColor = Color(0xFF575757);
const theme7UnselectedTaskIcon = Color(0xFF5D5D5D);

const theme7DividerColor = Color(0xFF636363);
const theme7UnselectedColor = Color(0xFF666666);
const theme7ShadowColor = Color(0xFFC0C0C0);

const theme7IndicatorColor = Color(0xFFEDBB4C);

const theme7BaseTextColor = Color(0xff161616);
const theme7BtnTextColor = Color(0xff161616);

final theme7PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme7BaseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme7PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme7BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme7LargeHeaderTextStyle  = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: theme7BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme7SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme7BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme7CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme7BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme7ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme7BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme7UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme7UnselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme7DividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme7CalendarDayWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme7UnselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme7DividerColor));

//next month text style:
final theme7CalendarNextMonthTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme7UnselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme7UnselectedColor));

final theme7CalendarWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme7UnselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme7DividerColor));



final theme7 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme7MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme7BtnTextColor,
        secondary: theme7TitleBoxBcgColor,
        surface: theme7TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme7UnselectedTaskIcon,
        onSurface: theme7TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme7LastGradientColor
    ),
    canvasColor: theme7TitleBoxBcgColor,
    focusColor: theme7FirstGradientColor,
    unselectedWidgetColor: theme7UnselectedColor,
    primaryColor: theme7FirstGradientColor,
    primaryColorLight: theme7MiddleGradientColor,
    primaryColorDark: theme7LastGradientColor,
    cardColor: theme7TitleBoxBcgColor,
    indicatorColor: theme7IndicatorColor,
    shadowColor: theme7ShadowColor,
    dialogBackgroundColor: theme7LastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme7LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme7SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme7CardTitleTextStyle,
      ///unselected text
      displayMedium: theme7UnselectedTextStyle,
      //content text style
      bodyMedium: theme7ContentTextStyle,
      ///calendar default text style
      labelLarge: theme7CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme7CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme7CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme7IndicatorColor,
      selectionColor: theme7UnselectedColor,
      cursorColor: theme7IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme7DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme7IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme7UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme7BaseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme7UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme7IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme7UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme7UnselectedColor;
          } else {
            return theme7ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme7IndicatorColor;
          } else {
            return theme7UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme7UnselectedColor;
          } else {
            return theme7ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme7IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme7SubtitleHeaderTextStyle,
        contentTextStyle: theme7ContentTextStyle,
        backgroundColor: theme7MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme7IndicatorColor,
      headerHeadlineStyle: theme7PickersTitleTextStyle,
      headerForegroundColor: theme7BaseTextColor,
      weekdayStyle: theme7PickersBaseTextStyle,
      dayStyle: theme7PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme7IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme7BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme7BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme7TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme7UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme7BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme7UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme7BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme7BaseTextColor; // selected element text color
        }
        return  theme7UnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme7IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme7IndicatorColor.withOpacity(0.5);
        }
        return  theme7UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme7IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme7BaseTextColor; // selected element text color
        }
        return  theme7UnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme7IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme7PickersBaseTextStyle,
      hourMinuteTextStyle: theme7PickersBaseTextStyle,
      dialTextStyle: theme7PickersBaseTextStyle,
      dialHandColor: theme7IndicatorColor, // color handles
      hourMinuteTextColor: theme7BaseTextColor, // text colors
      backgroundColor: theme7TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme7BaseTextColor; // selected element text color
        }
        return  theme7UnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme7BaseTextColor; // selected element text color
        }
        return  theme7UnselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme7BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme7IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme7TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme7IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme7BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme7BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme7TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme7UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme7BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme7UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme7TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme7UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme7TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme7TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme7UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme7UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme7UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme7IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme7BaseTextColor,
      unselectedLabelColor: theme7UnselectedColor,
      unselectedLabelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme7UnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme7BaseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme7IndicatorColor,
        inactiveTrackColor: theme7UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

