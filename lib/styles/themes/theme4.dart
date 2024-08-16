import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_4MainBcgColor = Color(0xFF34333d);
const theme_4TitleBoxBcgColor = Color(0xff3f3b4a);
const theme_4firstGradientColor = Color(0xFFc1cf2d);
const theme_4middleGradientColor = Color(0xFF69C98E);
const theme_4lastGradientColor = Color(0xFF126370);
const theme_4noteCardColor = Color(0xFF354a52);
const theme_4dividerColor = Color(0xFFDCDA2E);
const theme_4unselectedColor = Color(0xff2a2a31);
const theme_4shadowColor = Color(0xff2a2a31);
const theme_4indicatorColor = Colors.orangeAccent;

const theme_4baseTextColor = Colors.white70;
const theme_4UnselectedTaskIcon = Color(0xff2a2a31);

final theme_4PickersBaseTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      color: theme_4baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_4PickersTitleTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      color: theme_4baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_4largeHeaderTextStyle  = GoogleFonts.robotoSlab(
    textStyle: const TextStyle(
        color: theme_4baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_4subtitleHeaderTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_4baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_4cardTitleTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_4baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_4contentTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_4baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_4unselectedTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_4unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_4dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_4calendarDayWeekendTextStyle = GoogleFonts.robotoSlab(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_4unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_4dividerColor));

//next month text style:
final theme_4calendarNextMonthTextStyle = GoogleFonts.robotoSlab(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_4unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_4unselectedColor));

final theme_4calendarWeekendTextStyle = GoogleFonts.robotoSlab(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_4indicatorColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_4dividerColor));



final theme4 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_4MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: theme_4baseTextColor,
      surface: theme_4TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: theme_4UnselectedTaskIcon,
      onSurface: theme_4TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
      shadow: theme_4lastGradientColor
    ),
    canvasColor: theme_4TitleBoxBcgColor,
    focusColor: theme_4firstGradientColor,
    unselectedWidgetColor: theme_4unselectedColor,
    primaryColor: theme_4firstGradientColor,
    primaryColorLight: theme_4middleGradientColor,
    primaryColorDark: theme_4lastGradientColor,
    cardColor: theme_4TitleBoxBcgColor,
    indicatorColor: theme_4indicatorColor,
    shadowColor: theme_4shadowColor,
    dialogBackgroundColor: theme_4lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_4largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_4subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_4cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_4unselectedTextStyle,
      //content text style
      bodyMedium: theme_4contentTextStyle,
      ///calendar default text style
      labelLarge: theme_4calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_4calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_4calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_4dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_4indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_4unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_4baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_4unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_4indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_4unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_4unselectedColor;
          } else {
            return theme_4shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_4indicatorColor;
          } else {
            return theme_4unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_4unselectedColor;
          } else {
            return theme_4shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_4indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_4subtitleHeaderTextStyle,
        contentTextStyle: theme_4contentTextStyle,
        backgroundColor: theme_4MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_4indicatorColor,
      headerHeadlineStyle: theme_4PickersTitleTextStyle,
      headerForegroundColor: theme_4baseTextColor,
      weekdayStyle: theme_4PickersBaseTextStyle,
      dayStyle: theme_4PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_4indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_4baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
              color: theme_4baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_4TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_4unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
                color: theme_4baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_4unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_4baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_4baseTextColor; // selected element text color
        }
        return  theme_4unselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_4indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_4indicatorColor.withOpacity(0.5);
        }
        return  theme_4unselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_4indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_4baseTextColor; // selected element text color
        }
        return  theme_4unselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_4indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_4PickersBaseTextStyle,
      hourMinuteTextStyle: theme_4PickersBaseTextStyle,
      dialTextStyle: theme_4PickersBaseTextStyle,
      dialHandColor: theme_4indicatorColor, // color handles
      hourMinuteTextColor: theme_4baseTextColor, // text colors
      backgroundColor: theme_4TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_4baseTextColor; // selected element text color
        }
        return  theme_4unselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_4baseTextColor; // selected element text color
        }
        return  theme_4unselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme_4baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_4indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_4TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_4indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_4baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
              color: theme_4baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_4TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_4unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
                color: theme_4baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_4unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_4TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_4unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_4TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_4TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_4unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_4unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_4unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_4TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_4indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_4baseTextColor,
      unselectedLabelColor: theme_4unselectedColor,
      unselectedLabelStyle: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_4unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_4baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_4indicatorColor,
        inactiveTrackColor: theme_4unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

