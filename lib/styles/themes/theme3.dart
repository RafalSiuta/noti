import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme3MainBcgColor = Color(0xFF1C232B);
const theme3TitleBoxBcgColor = Color(0xFF202732);

const theme3FirstGradientColor = Color(0xFF28313E);
const theme3MiddleGradientColor = Color(0xFF222A35);
const theme3LastGradientColor = Color(0xFF1C232C);
const theme3UnselectedTaskIcon = Color(0xFF101418);
const theme3OutlineColor = Color(0xFF0B0F11);

const theme3DividerColor = Color(0xFF070A0B);
const theme3UnselectedColor = Color(0xFF070A0B);
const theme3ShadowColor = Color(0xFF192026);

const theme3IndicatorColor = Color(0xFFAA8657);
const theme3CalendarMarkerColorOne = Color(0xFFA04F4F);// 3F51B5 EF6C00
const theme3CalendarMarkerColorTwo = Color(0xFFAA6A56);// 3F51B5 EF6C00

const theme3BaseTextColor = Color(0xffA9A9A9);
const theme3HelperTextColor = Color(0xff696969);
const theme3BtnTextColor = Color(0xff161616);
const theme3PickerTextColor = Color(0xffA9A9A9);

final theme3PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme3PickerTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w100),
);

final theme3PickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme3BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w100),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme3LargeHeaderTextStyle  = GoogleFonts.exo2(
    textStyle: const TextStyle(
        color: theme3BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w300
    ));
//Subtitle header:
final TextStyle theme3SubtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme3BaseTextColor,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme3CardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme3BaseTextColor,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme3ContentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme3BaseTextColor,
      fontWeight: FontWeight.w100,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme3UnselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme3UnselectedColor,
      fontWeight: FontWeight.w100,
      decorationColor: theme3UnselectedColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme3CalendarDayWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme3IndicatorColor,
        fontWeight: FontWeight.w100,
        decorationColor: theme3DividerColor));

//next month text style:
final theme3CalendarNextMonthTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme3BaseTextColor,
        fontWeight: FontWeight.w100,
        decorationColor: theme3UnselectedColor));

final theme3CalendarWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme3IndicatorColor,
        fontWeight: FontWeight.w100,
        decorationColor: theme3DividerColor));



final theme3 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme3MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme3BtnTextColor,
        secondary: theme3IndicatorColor,
        primaryFixed:  theme3CalendarMarkerColorOne,
        secondaryFixed:  theme3CalendarMarkerColorTwo,
        surface: theme3TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme3UnselectedTaskIcon,
        onSurface: theme3TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme3LastGradientColor,
        outline: theme3OutlineColor
    ),
    canvasColor: theme3TitleBoxBcgColor,
    focusColor: theme3FirstGradientColor,
    unselectedWidgetColor: theme3UnselectedColor,
    primaryColor: theme3FirstGradientColor,
    primaryColorLight: theme3MiddleGradientColor,
    primaryColorDark: theme3LastGradientColor,
    cardColor: theme3TitleBoxBcgColor,
    indicatorColor: theme3IndicatorColor,
    shadowColor: theme3ShadowColor,
    dialogBackgroundColor: theme3LastGradientColor,
    primarySwatch: Colors.blue,
    highlightColor:Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme3LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme3SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme3CardTitleTextStyle,
      ///unselected text
      displayMedium: theme3UnselectedTextStyle,
      //content text style
      bodyMedium: theme3ContentTextStyle,
      ///calendar default text style
      labelLarge: theme3CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme3CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme3CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme3IndicatorColor,
      selectionColor: theme3UnselectedColor,
      cursorColor: theme3IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme3DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme3IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme3UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
          color: theme3BaseTextColor, fontSize: 18, fontWeight: FontWeight.w500,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
          color: theme3UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w400,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme3IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme3UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme3UnselectedColor;
          } else {
            return theme3ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme3IndicatorColor;
          } else {
            return theme3UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme3UnselectedColor;
          } else {
            return theme3ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme3IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme3SubtitleHeaderTextStyle,
        contentTextStyle: theme3ContentTextStyle,
        backgroundColor: theme3MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme3MiddleGradientColor,
      headerHeadlineStyle: theme3PickersTitleTextStyle,
      headerForegroundColor: theme3BaseTextColor,
      weekdayStyle: theme3PickersBaseTextStyle,
      dayStyle: theme3PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme3IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme3BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme3BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w100),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme3TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme3PickerTextColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme3BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w100),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme3UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme3BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme3IndicatorColor; // selected element text color
        }
        return  theme3PickerTextColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme3IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme3IndicatorColor.withOpacity(0.5);
        }
        return  theme3UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme3IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme3IndicatorColor; // selected element text color
        }
        return  theme3PickerTextColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme3IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme3PickersBaseTextStyle,
      hourMinuteTextStyle: theme3PickersBaseTextStyle,
      dialTextStyle: theme3PickersBaseTextStyle,
      dialHandColor: theme3FirstGradientColor, // color handles
      hourMinuteTextColor: theme3BaseTextColor, // text colors
      backgroundColor: theme3TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme3IndicatorColor; // selected element text color
        }
        return  theme3PickerTextColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme3IndicatorColor; // selected element text color
        }
        return  theme3PickerTextColor; // unselected element text color
      }),
      entryModeIconColor: theme3BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme3IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme3TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme3IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme3BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme3BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w100),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme3TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme3PickerTextColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme3BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w100),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme3UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme3TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme3UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme3TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme3TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme3HelperTextColor,
        fontSize: 8.0,
        fontWeight: FontWeight.bold
      ),
      labelStyle: TextStyle(
        color: theme3UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme3UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme3IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme3BaseTextColor,
      unselectedLabelColor: theme3UnselectedColor,
      unselectedLabelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme3UnselectedColor,
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme3BaseTextColor,
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme3IndicatorColor,
        inactiveTrackColor: theme3UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

