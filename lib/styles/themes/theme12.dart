import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme12MainBcgColor = Color(0xFFE6E6E6);
const theme12TitleBoxBcgColor = Color(0xFFF8F8F8);

const theme12FirstGradientColor = Color(0xFF979696);
const theme12MiddleGradientColor = Color(0xFF7B7B7B);
const theme12LastGradientColor = Color(0xFF575757);
const theme12UnselectedTaskIcon = Color(0xFF5D5D5D);

const theme12DividerColor = Color(0xFF636363);
const theme12UnselectedColor = Color(0xFF666666);
const theme12ShadowColor = Color(0xFFC0C0C0);

const theme12IndicatorColor = Color(0xFFEDBB4C);

const theme12BaseTextColor = Color(0xff161616);
const theme12BtnTextColor = Color(0xff161616);

final theme12PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme12BaseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme12PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme12BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme12LargeHeaderTextStyle  = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: theme12BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme12SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme12BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme12CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme12BaseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme12ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme12BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme12UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme12UnselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme12DividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme12CalendarDayWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme12UnselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme12DividerColor));

//next month text style:
final theme12CalendarNextMonthTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme12UnselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme12UnselectedColor));

final theme12CalendarWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme12UnselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme12DividerColor));



final theme12 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme12MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme12BtnTextColor,
        secondary: theme12TitleBoxBcgColor,
        surface: theme12TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme12UnselectedTaskIcon,
        onSurface: theme12TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme12LastGradientColor
    ),
    canvasColor: theme12TitleBoxBcgColor,
    focusColor: theme12FirstGradientColor,
    unselectedWidgetColor: theme12UnselectedColor,
    primaryColor: theme12FirstGradientColor,
    primaryColorLight: theme12MiddleGradientColor,
    primaryColorDark: theme12LastGradientColor,
    cardColor: theme12TitleBoxBcgColor,
    indicatorColor: theme12IndicatorColor,
    shadowColor: theme12ShadowColor,
    dialogBackgroundColor: theme12LastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme12LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme12SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme12CardTitleTextStyle,
      ///unselected text
      displayMedium: theme12UnselectedTextStyle,
      //content text style
      bodyMedium: theme12ContentTextStyle,
      ///calendar default text style
      labelLarge: theme12CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme12CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme12CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme12IndicatorColor,
      selectionColor: theme12UnselectedColor,
      cursorColor: theme12IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme12DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme12IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme12UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme12BaseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme12UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme12IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme12UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme12UnselectedColor;
          } else {
            return theme12ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme12IndicatorColor;
          } else {
            return theme12UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme12UnselectedColor;
          } else {
            return theme12ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme12IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme12SubtitleHeaderTextStyle,
        contentTextStyle: theme12ContentTextStyle,
        backgroundColor: theme12MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme12IndicatorColor,
      headerHeadlineStyle: theme12PickersTitleTextStyle,
      headerForegroundColor: theme12BaseTextColor,
      weekdayStyle: theme12PickersBaseTextStyle,
      dayStyle: theme12PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme12IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme12BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme12BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme12TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme12UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme12BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme12UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme12BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme12BaseTextColor; // selected element text color
        }
        return  theme12UnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme12IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme12IndicatorColor.withOpacity(0.5);
        }
        return  theme12UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme12IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme12BaseTextColor; // selected element text color
        }
        return  theme12UnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme12IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme12PickersBaseTextStyle,
      hourMinuteTextStyle: theme12PickersBaseTextStyle,
      dialTextStyle: theme12PickersBaseTextStyle,
      dialHandColor: theme12IndicatorColor, // color handles
      hourMinuteTextColor: theme12BaseTextColor, // text colors
      backgroundColor: theme12TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme12BaseTextColor; // selected element text color
        }
        return  theme12UnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme12BaseTextColor; // selected element text color
        }
        return  theme12UnselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme12BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme12IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme12TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme12IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme12BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme12BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme12TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme12UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme12BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme12UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme12TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme12UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme12TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme12TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme12UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme12UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme12UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme12IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme12BaseTextColor,
      unselectedLabelColor: theme12UnselectedColor,
      unselectedLabelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme12UnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme12BaseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme12IndicatorColor,
        inactiveTrackColor: theme12UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

