import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_9MainBcgColor = Color(0xFFebeded);
const theme_9TitleBoxBcgColor = Color(0xFFf7f7f7);
const theme_9firstGradientColor = Color(0xFF39d4fa);
const theme_9middleGradientColor = Color(0xFF0463ca);
const theme_9lastGradientColor = Color(0xFF0c59a7);

const theme_9dividerColor = Color(0xFF303d41);
const theme_9unselectedColor = Color(0xff81878d);


const theme_9calendarWeekendColor = Color(0xFF3a4b4f);
const theme_9indicatorColor = Colors.orangeAccent;

const theme_9baseTextColor = Color(0xFF3a4b4f);
const theme_9UnselectedTaskIcon = Color(0xff093d74);
const theme_9shadowColor = Color(0xffd9dfed);

final theme_9PickersBaseTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_9baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_9PickersTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_9baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_9largeHeaderTextStyle  = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: theme_9baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_9subtitleHeaderTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_9baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_9cardTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_9baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_9contentTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_9baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_9unselectedTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_9unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_9dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_9calendarDayWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_9unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_9dividerColor));

//next month text style:
final theme_9calendarNextMonthTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.orange,//theme_9unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_9unselectedColor));

final theme_9calendarWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.orange,
        fontWeight: FontWeight.w400,
        decorationColor: theme_9dividerColor));



final theme9 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_9MainBcgColor,
    colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: theme_9TitleBoxBcgColor,
        surface: theme_9TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme_9UnselectedTaskIcon,
        onSurface: theme_9TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme_9UnselectedTaskIcon
    ),
    canvasColor: theme_9TitleBoxBcgColor,
    focusColor: theme_9firstGradientColor,
    unselectedWidgetColor: theme_9unselectedColor,
    primaryColor: theme_9firstGradientColor,
    primaryColorLight: theme_9middleGradientColor,
    primaryColorDark: theme_9lastGradientColor,
    cardColor: theme_9TitleBoxBcgColor,
    indicatorColor: theme_9indicatorColor,
    shadowColor: theme_9shadowColor,
    dialogBackgroundColor: theme_9lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_9largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_9subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_9cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_9unselectedTextStyle,
      //content text style
      bodyMedium: theme_9contentTextStyle,
      ///calendar default text style
      labelLarge: theme_9calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_9calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_9calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_9dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_9indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_9unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_9baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_9unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_9indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_9unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_9unselectedColor;
          } else {
            return theme_9shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_9indicatorColor;
          } else {
            return theme_9unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_9unselectedColor;
          } else {
            return theme_9shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_9indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_9subtitleHeaderTextStyle,
        contentTextStyle: theme_9contentTextStyle,
        backgroundColor: theme_9MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_9indicatorColor,
      headerHeadlineStyle: theme_9PickersTitleTextStyle,
      headerForegroundColor: theme_9baseTextColor,
      weekdayStyle: theme_9PickersBaseTextStyle,
      dayStyle: theme_9PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_9indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_9unselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_9baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_9TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_9lastGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_9baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_9lastGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_9baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_9baseTextColor; // selected element text color
        }
        return  theme_9lastGradientColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_9indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_9indicatorColor.withOpacity(0.5);
        }
        return theme_9lastGradientColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_9indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_9baseTextColor; // selected element text color
        }
        return  theme_9lastGradientColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_9indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_9PickersBaseTextStyle,
      hourMinuteTextStyle: theme_9PickersBaseTextStyle,
      dialTextStyle: theme_9PickersBaseTextStyle,
      dialHandColor: theme_9indicatorColor, // color handles
      hourMinuteTextColor: theme_9baseTextColor, // text colors
      backgroundColor: theme_9TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_9baseTextColor; // selected element text color
        }
        return  theme_9lastGradientColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_9baseTextColor; // selected element text color
        }
        return  theme_9lastGradientColor; // unselected element text color
      }),
      entryModeIconColor: theme_9baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_9indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_9TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_9indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_9baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_9baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_9TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_9lastGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_9baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_9lastGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_9TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_9unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_9TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_9TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_9unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_9unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_9unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_9TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_9indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_9baseTextColor,
      unselectedLabelColor: theme_9unselectedColor,
      unselectedLabelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_9unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_9baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_9indicatorColor,
        inactiveTrackColor: theme_9unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);


