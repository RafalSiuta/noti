import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_1MainBcgColor = Color(0xFF303f44);//Color(0xFF1B2425);//Color(0xFF222D2F);
const theme_1ShapeLightGradient = Color(0xFF314446);
const theme_1TitleBoxBcgColor = Color(0xFF3d5659);//Color(0xFF293538);
//const theme_1MainDarkBcgColor = Color(0xFF1B2425);

const theme_1lastGradientColor = Color(0xFFe2ef99);//Color(0xFF00695c);
const theme_1middleGradientColor = Color(0xFF4eaf73);
const theme_1firstGradientColor = Color(0xFF00564b);//Color(0xFF60D58C);

const theme_1GreenColorVeryLight = Color(0xFF68f289);
const theme_1YellowColorVeryLight = Color(0xFFFFD98D);//Color(0xFFfff59d);
//const theme_1YellowColorDark = Color(0xFFFFD98D);
//const theme_1SpecialsFontColor = Color(0xFF60D58C);
const theme_1OperatorsFontColor = Color(0xFFA0A0A0);
const theme_1dividerColor = Color(0xFF636363);
const theme_1unselectedColor = Color(0xFF17202A);
const theme_1shadowColor = Color(0xFF273833);
const theme_1indicatorColor = Colors.deepOrange;

const theme_1baseTextColor = Color(0xFFfcec76);
const theme_1UnselectedTaskIcon = Color(0xFF17202A);

final theme_1PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme_1baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_1PickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme_1baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_1largeHeaderTextStyle  = GoogleFonts.exo2(
    textStyle: const TextStyle(
        color: theme_1baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_1subtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_1baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_1cardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_1baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_1contentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_1baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_1unselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_1unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_1dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_1calendarDayWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_1unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_1dividerColor));

//next month text style:
final theme_1calendarNextMonthTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_1indicatorColor,//theme_1unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_1unselectedColor));

final theme_1calendarWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_1indicatorColor,//theme_1unselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_1dividerColor));



final theme1 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_1MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: theme_1baseTextColor,//task icon color
      surface: theme_1TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: theme_1UnselectedTaskIcon,
      onSurface: theme_1TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
        shadow: theme_1firstGradientColor
    ),
    canvasColor: theme_1TitleBoxBcgColor,
    focusColor: theme_1firstGradientColor,
    unselectedWidgetColor: theme_1unselectedColor,
    primaryColor: theme_1firstGradientColor,
    primaryColorLight: theme_1middleGradientColor,
    primaryColorDark: theme_1lastGradientColor,
    cardColor: theme_1TitleBoxBcgColor,
    indicatorColor: theme_1indicatorColor,
    shadowColor: theme_1shadowColor,
    dialogBackgroundColor: theme_1lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_1largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_1subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_1cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_1unselectedTextStyle,
      //content text style
      bodyMedium: theme_1contentTextStyle,
      ///calendar default text style
      labelLarge: theme_1calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_1calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_1calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_1dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_1indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_1unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_1baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_1unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_1indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_1unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_1unselectedColor;
          } else {
            return theme_1shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_1indicatorColor;
          } else {
            return theme_1unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_1unselectedColor;
          } else {
            return theme_1shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_1indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_1subtitleHeaderTextStyle,
        contentTextStyle: theme_1contentTextStyle,
        backgroundColor: theme_1MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_1indicatorColor,
      headerHeadlineStyle: theme_1PickersTitleTextStyle,
      headerForegroundColor: theme_1baseTextColor,
      weekdayStyle: theme_1PickersBaseTextStyle,
      dayStyle: theme_1PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_1indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_1baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_1baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_1TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_1unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme_1baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_1unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_1baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_1baseTextColor; // selected element text color
        }
        return  theme_1unselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_1indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_1indicatorColor.withOpacity(0.5);
        }
        return  theme_1unselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_1indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_1baseTextColor; // selected element text color
        }
        return  theme_1unselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_1indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_1PickersBaseTextStyle,
      hourMinuteTextStyle: theme_1PickersBaseTextStyle,
      dialTextStyle: theme_1PickersBaseTextStyle,
      dialHandColor: theme_1indicatorColor, // color handles
      hourMinuteTextColor: theme_1baseTextColor, // text colors
      backgroundColor: theme_1TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_1baseTextColor; // selected element text color
        }
        return  theme_1unselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_1baseTextColor; // selected element text color
        }
        return  theme_1unselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme_1baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_1indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_1TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_1indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_1baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_1baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_1TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_1unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme_1baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_1unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_1TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_1unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_1TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_1TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_1unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_1unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_1unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_1TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_1indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_1baseTextColor,
      unselectedLabelColor: theme_1unselectedColor,
      unselectedLabelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_1unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_1baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_1indicatorColor,
        inactiveTrackColor: theme_1unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

