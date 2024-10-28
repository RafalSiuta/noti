import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme9MainBcgColor = Color(0xFF111518);
const theme9TitleBoxBcgColor = Color(0xFF191F24);

const theme9FirstGradientColor = Color(0xFF192024);
const theme9MiddleGradientColor = Color(0xFF15231D);
const theme9LastGradientColor = Color(0xFF465936);
const theme9UnselectedTaskIcon = Color(0xFF151B1E);
const theme9OutlineColor = Color(0xFF89B800);

const theme9DividerColor = Color(0xFF465936);
const theme9UnselectedColor = Color(0xFF000000);
const theme9ShadowColor = Color(0xFF111518);

const theme9IndicatorColor = Color(0xFF89B800);

const theme9BaseTextColor = Color(0xff8F96A3);
const theme9BtnTextColor = Color(0xff161616);
const theme9PickerTextColor = Color(0xff8F96A3);

final theme9PickersBaseTextStyle = GoogleFonts.rajdhani(
  textStyle: const TextStyle(
      color: theme9PickerTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w100),
);

final theme9PickersTitleTextStyle = GoogleFonts.rajdhani(
  textStyle: const TextStyle(
      color: theme9BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w100),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme9LargeHeaderTextStyle  = GoogleFonts.rajdhani(
    textStyle: const TextStyle(
        color: theme9BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w300
    ));
//Subtitle header:
final TextStyle theme9SubtitleHeaderTextStyle = GoogleFonts.rajdhani(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme9BaseTextColor,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme9CardTitleTextStyle = GoogleFonts.rajdhani(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme9BaseTextColor,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme9ContentTextStyle = GoogleFonts.rajdhani(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme9BaseTextColor,
      fontWeight: FontWeight.w100,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme9UnselectedTextStyle = GoogleFonts.rajdhani(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme9UnselectedColor,
      fontWeight: FontWeight.w100,
      decorationColor: theme9UnselectedColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme9CalendarDayWeekendTextStyle = GoogleFonts.rajdhani(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme9IndicatorColor,
        fontWeight: FontWeight.w100,
        decorationColor: theme9DividerColor));

//next month text style:
final theme9CalendarNextMonthTextStyle = GoogleFonts.rajdhani(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme9BaseTextColor,
        fontWeight: FontWeight.w100,
        decorationColor: theme9UnselectedColor));

final theme9CalendarWeekendTextStyle = GoogleFonts.rajdhani(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme9IndicatorColor,
        fontWeight: FontWeight.w100,
        decorationColor: theme9DividerColor));



final theme9 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme9MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme9BtnTextColor,
        secondary: theme9IndicatorColor,
        surface: theme9TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme9UnselectedTaskIcon,
        onSurface: theme9TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme9LastGradientColor,
        outline: theme9OutlineColor
    ),
    canvasColor: theme9TitleBoxBcgColor,
    focusColor: theme9FirstGradientColor,
    unselectedWidgetColor: theme9UnselectedColor,
    primaryColor: theme9FirstGradientColor,
    primaryColorLight: theme9MiddleGradientColor,
    primaryColorDark: theme9LastGradientColor,
    cardColor: theme9TitleBoxBcgColor,
    indicatorColor: theme9IndicatorColor,
    shadowColor: theme9ShadowColor,
    dialogBackgroundColor: theme9LastGradientColor,
    primarySwatch: Colors.blue,
    highlightColor:Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme9LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme9SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme9CardTitleTextStyle,
      ///unselected text
      displayMedium: theme9UnselectedTextStyle,
      //content text style
      bodyMedium: theme9ContentTextStyle,
      ///calendar default text style
      labelLarge: theme9CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme9CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme9CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme9IndicatorColor,
      selectionColor: theme9UnselectedColor,
      cursorColor: theme9IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme9DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme9IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme9UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.rajdhani(
        textStyle: const TextStyle(
          color: theme9BaseTextColor, fontSize: 18, fontWeight: FontWeight.w300,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.rajdhani(
        textStyle: const TextStyle(
          color: theme9UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w200,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme9IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme9UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme9UnselectedColor;
          } else {
            return theme9ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme9IndicatorColor;
          } else {
            return theme9UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme9UnselectedColor;
          } else {
            return theme9ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme9IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme9SubtitleHeaderTextStyle,
        contentTextStyle: theme9ContentTextStyle,
        backgroundColor: theme9MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme9MiddleGradientColor,
      headerHeadlineStyle: theme9PickersTitleTextStyle,
      headerForegroundColor: theme9BaseTextColor,
      weekdayStyle: theme9PickersBaseTextStyle,
      dayStyle: theme9PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme9IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme9BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.rajdhani(
          textStyle: const TextStyle(
              color: theme9BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w100),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme9TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme9PickerTextColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.rajdhani(
            textStyle: const TextStyle(
                color: theme9BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w100),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme9UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme9BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme9IndicatorColor; // selected element text color
        }
        return  theme9PickerTextColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme9IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme9IndicatorColor.withOpacity(0.5);
        }
        return  theme9UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme9IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme9IndicatorColor; // selected element text color
        }
        return  theme9PickerTextColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme9IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme9PickersBaseTextStyle,
      hourMinuteTextStyle: theme9PickersBaseTextStyle,
      dialTextStyle: theme9PickersBaseTextStyle,
      dialHandColor: theme9LastGradientColor, // color handles
      hourMinuteTextColor: theme9BaseTextColor, // text colors
      backgroundColor: theme9TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme9IndicatorColor; // selected element text color
        }
        return  theme9PickerTextColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme9IndicatorColor; // selected element text color
        }
        return  theme9PickerTextColor; // unselected element text color
      }),
      entryModeIconColor: theme9BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme9IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme9TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme9IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme9BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.rajdhani(
          textStyle: const TextStyle(
              color: theme9BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w100),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme9TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme9PickerTextColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.rajdhani(
            textStyle: const TextStyle(
                color: theme9BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w100),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme9UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme9TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme9UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme9TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme9TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme9UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme9UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme9UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme9IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme9BaseTextColor,
      unselectedLabelColor: theme9UnselectedColor,
      unselectedLabelStyle: GoogleFonts.rajdhani(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme9UnselectedColor,
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.rajdhani(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme9BaseTextColor,
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme9IndicatorColor,
        inactiveTrackColor: theme9UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

