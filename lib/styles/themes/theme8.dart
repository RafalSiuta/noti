import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_8MainBcgColor = Color(0xFF321E25);
const theme_8TitleBoxBcgColor = Color(0xFF472B35);
const theme_8firstGradientColor = Color(0xFFEE4540);
const theme_8middleGradientColor = Color(0xFFC72C41);
const theme_8lastGradientColor = Color(0xFF500B28);
const theme_8hintColor = theme_8indicatorColor;
const theme_8dividerColor = Colors.orange;//Color(0xFF636363);
const theme_8unselectedColor = Color(0xFF201318);
const theme_8calendarWeekendColor = Color(0xFFD3D1CC);
const theme_8indicatorColor = Colors.orange;


const theme_8shadowColor = Color(0xFF352127);
const theme_8baseTextColor = Color(0xFFD3D1CC);
const theme_8UnselectedTaskIcon = Color(0xFF500B28);

final theme_8PickersBaseTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_8baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_8PickersTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_8baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_8largeHeaderTextStyle  = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: theme_8baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_8subtitleHeaderTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_8baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_8cardTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_8baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_8contentTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_8baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_8unselectedTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_8unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_8dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_8calendarDayWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_8unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_8dividerColor));

//next month text style:
final theme_8calendarNextMonthTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_8indicatorColor,//theme_8unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_8unselectedColor));

final theme_8calendarWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_8indicatorColor,//theme_8unselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_8dividerColor));



final theme8 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_8MainBcgColor,
    colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: theme_8baseTextColor,
        surface: theme_8TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme_8UnselectedTaskIcon,
        onSurface: theme_8TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme_8UnselectedTaskIcon
    ),
    canvasColor: theme_8TitleBoxBcgColor,
    focusColor: theme_8firstGradientColor,
    unselectedWidgetColor: theme_8unselectedColor,
    primaryColor: theme_8firstGradientColor,
    primaryColorLight: theme_8middleGradientColor,
    primaryColorDark: theme_8lastGradientColor,
    cardColor: theme_8TitleBoxBcgColor,
    indicatorColor: theme_8indicatorColor,
    shadowColor: theme_8shadowColor,
    dialogBackgroundColor: theme_8lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_8largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_8subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_8cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_8unselectedTextStyle,
      //content text style
      bodyMedium: theme_8contentTextStyle,
      ///calendar default text style
      labelLarge: theme_8calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_8calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_8calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme_8indicatorColor,
      selectionColor: theme_8unselectedColor,
      cursorColor: theme_8indicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_8dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_8indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_8unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_8baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_8unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_8indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_8unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_8unselectedColor;
          } else {
            return theme_8shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_8indicatorColor;
          } else {
            return theme_8unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_8unselectedColor;
          } else {
            return theme_8shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_8indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_8subtitleHeaderTextStyle,
        contentTextStyle: theme_8contentTextStyle,
        backgroundColor: theme_8MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_8indicatorColor,
      headerHeadlineStyle: theme_8PickersTitleTextStyle,
      headerForegroundColor: theme_8baseTextColor,
      weekdayStyle: theme_8PickersBaseTextStyle,
      dayStyle: theme_8PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_8indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_8unselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_8baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_8TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_8firstGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_8baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_8firstGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_8baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_8baseTextColor; // selected element text color
        }
        return  theme_8firstGradientColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_8indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_8indicatorColor.withOpacity(0.5);
        }
        return theme_8firstGradientColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_8indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_8baseTextColor; // selected element text color
        }
        return  theme_8firstGradientColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_8indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_8PickersBaseTextStyle,
      hourMinuteTextStyle: theme_8PickersBaseTextStyle,
      dialTextStyle: theme_8PickersBaseTextStyle,
      dialHandColor: theme_8indicatorColor, // color handles
      hourMinuteTextColor: theme_8baseTextColor, // text colors
      backgroundColor: theme_8TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_8baseTextColor; // selected element text color
        }
        return  theme_8firstGradientColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_8baseTextColor; // selected element text color
        }
        return  theme_8firstGradientColor; // unselected element text color
      }),
      entryModeIconColor: theme_8baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_8indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_8TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_8indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_8baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_8baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_8TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_8firstGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_8baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_8firstGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_8TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_8unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_8TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_8TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_8unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_8unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_8unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_8TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_8indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_8baseTextColor,
      unselectedLabelColor: theme_8unselectedColor,
      unselectedLabelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_8unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_8baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_8indicatorColor,
        inactiveTrackColor: theme_8unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);
