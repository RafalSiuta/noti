import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_6MainBcgColor = Color(0xFF292C35);
const theme_6TitleBoxBcgColor = Color(0xFF323642);
const theme_6firstGradientColor = Color(0xFF9EADC8);
const theme_6middleGradientColor = Color(0xFF8d99b0);
const theme_6lastGradientColor = Color(0xFF5B507A);
const theme_6hintColor = Colors.pinkAccent;
const theme_6dividerColor = Color(0xFF636363);
const theme_6unselectedColor = Color(0xFF16181D);
const theme_6shadowColor = Color(0xFF272A35);
const theme_6indicatorColor = Colors.pinkAccent;


const theme_6baseTextColor = Color(0xFFD9D9D9);
const theme_6UnselectedTaskIcon = Color(0xFF463D5D);

final theme_6PickersBaseTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_6baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_6PickersTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_6baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_6largeHeaderTextStyle  = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: theme_6baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_6subtitleHeaderTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_6baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_6cardTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_6baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_6contentTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_6baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_6unselectedTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_6unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_6dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_6calendarDayWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_6unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_6dividerColor));

//next month text style:
final theme_6calendarNextMonthTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_6indicatorColor,//theme_6unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_6unselectedColor));

final theme_6calendarWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_6indicatorColor,//theme_6unselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_6dividerColor));



final theme6 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_6MainBcgColor,
    colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: theme_6baseTextColor,
        surface: theme_6TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme_6UnselectedTaskIcon,
        onSurface: theme_6TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme_6UnselectedTaskIcon
    ),
    canvasColor: theme_6TitleBoxBcgColor,
    focusColor: theme_6firstGradientColor,
    unselectedWidgetColor: theme_6unselectedColor,
    primaryColor: theme_6firstGradientColor,
    primaryColorLight: theme_6middleGradientColor,
    primaryColorDark: theme_6lastGradientColor,
    cardColor: theme_6TitleBoxBcgColor,
    indicatorColor: theme_6indicatorColor,
    shadowColor: theme_6shadowColor,
    dialogBackgroundColor: theme_6lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_6largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_6subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_6cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_6unselectedTextStyle,
      //content text style
      bodyMedium: theme_6contentTextStyle,
      ///calendar default text style
      labelLarge: theme_6calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_6calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_6calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_6dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_6indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_6unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_6baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_6unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_6indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_6unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_6unselectedColor;
          } else {
            return theme_6shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_6indicatorColor;
          } else {
            return theme_6unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_6unselectedColor;
          } else {
            return theme_6shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_6indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_6subtitleHeaderTextStyle,
        contentTextStyle: theme_6contentTextStyle,
        backgroundColor: theme_6MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_6indicatorColor,
      headerHeadlineStyle: theme_6PickersTitleTextStyle,
      headerForegroundColor: theme_6baseTextColor,
      weekdayStyle: theme_6PickersBaseTextStyle,
      dayStyle: theme_6PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_6indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_6unselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_6baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_6TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_6firstGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_6baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_6firstGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_6baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_6baseTextColor; // selected element text color
        }
        return  theme_6firstGradientColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_6indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_6indicatorColor.withOpacity(0.5);
        }
        return theme_6firstGradientColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_6indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_6baseTextColor; // selected element text color
        }
        return  theme_6firstGradientColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_6indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_6PickersBaseTextStyle,
      hourMinuteTextStyle: theme_6PickersBaseTextStyle,
      dialTextStyle: theme_6PickersBaseTextStyle,
      dialHandColor: theme_6indicatorColor, // color handles
      hourMinuteTextColor: theme_6baseTextColor, // text colors
      backgroundColor: theme_6TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_6baseTextColor; // selected element text color
        }
        return  theme_6firstGradientColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_6baseTextColor; // selected element text color
        }
        return  theme_6firstGradientColor; // unselected element text color
      }),
      entryModeIconColor: theme_6baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_6indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_6TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_6indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_6baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_6baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_6TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_6firstGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_6baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_6firstGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_6TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_6unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_6TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_6TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_6unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_6unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_6unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_6TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_6indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_6baseTextColor,
      unselectedLabelColor: theme_6unselectedColor,
      unselectedLabelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_6unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_6baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_6indicatorColor,
        inactiveTrackColor: theme_6unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

