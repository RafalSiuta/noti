import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_10MainBcgColor = Color(0xffb7b3af);
const theme_10TitleBoxBcgColor = Color(0xFFc2bcb8);

const theme_10dividerColor = Color(0xff9d9490);

const theme_10indicatorColor = Color(0xff1677ff);

const theme_10baseTextColor = Color(0xFFffffff);//Color(0xFF0C1123);//
const theme_10UnselectedTaskIcon = Color(0xFF202F62);

const theme_10firstGradientColor = Color(0xFF283C7B);
const theme_10middleGradientColor = Color(0xFF3759AA);
const theme_10lastGradientColor = Color(0xff437dcd);

const theme_10unselectedColor = Color(0xff877f7b);
const theme_10shadowColor = Color(0xffb8b5b1);


final theme_10PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme_10baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_10PickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme_10baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_10largeHeaderTextStyle  = GoogleFonts.exo2(
    textStyle: const TextStyle(
        color: theme_10baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_10subtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_10baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_10cardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_10baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_10contentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_10baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_10unselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_10unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_10dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_10calendarDayWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_10unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_10dividerColor));

//next month text style:
final theme_10calendarNextMonthTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_10indicatorColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_10unselectedColor));

final theme_10calendarWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_10indicatorColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_10dividerColor));



final theme10 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_10MainBcgColor,
    colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: theme_10baseTextColor,
        surface: theme_10TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme_10UnselectedTaskIcon,
        onSurface: theme_10TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme_10UnselectedTaskIcon
    ),
    canvasColor: theme_10TitleBoxBcgColor,
    focusColor: theme_10firstGradientColor,
    unselectedWidgetColor: theme_10unselectedColor,
    primaryColor: theme_10firstGradientColor,
    primaryColorLight: theme_10middleGradientColor,
    primaryColorDark: theme_10lastGradientColor,
    cardColor: theme_10TitleBoxBcgColor,
    indicatorColor: theme_10indicatorColor,
    shadowColor: theme_10shadowColor,
    dialogBackgroundColor: theme_10lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_10largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_10subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_10cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_10unselectedTextStyle,
      //content text style
      bodyMedium: theme_10contentTextStyle,
      ///calendar default text style
      labelLarge: theme_10calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_10calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_10calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme_10indicatorColor,
      selectionColor: theme_10unselectedColor,
      cursorColor: theme_10indicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_10dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_10indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_10unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_10baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_10unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_10indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_10unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
        trackOutlineColor: WidgetStateProperty.resolveWith(
              (states) {
            if (states.contains(WidgetState.selected)) {
              return theme_10unselectedColor;
            } else {
              return theme_10shadowColor;
            }
          },
        ),
        thumbColor: WidgetStateProperty.resolveWith(
              (states) {
            if (states.contains(WidgetState.selected)) {
              return theme_10indicatorColor;
            } else {
              return theme_10unselectedColor;
            }
          },
        ),
        trackColor: WidgetStateProperty.resolveWith(
              (states) {
            if (states.contains(WidgetState.selected)) {
              return theme_10unselectedColor;
            } else {
              return theme_10shadowColor;
            }
          },
        ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_10indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_10subtitleHeaderTextStyle,
        contentTextStyle: theme_10contentTextStyle,
        backgroundColor: theme_10MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_10indicatorColor,
      headerHeadlineStyle: theme_10PickersTitleTextStyle,
      headerForegroundColor: theme_10baseTextColor,
      weekdayStyle: theme_10PickersBaseTextStyle,
      dayStyle: theme_10PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_10indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_10unselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_10baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_10TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_10lastGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme_10baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_10lastGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_10baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_10baseTextColor; // selected element text color
        }
        return  theme_10lastGradientColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_10indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_10indicatorColor.withOpacity(0.5);
        }
        return theme_10lastGradientColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_10indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_10baseTextColor; // selected element text color
        }
        return  theme_10lastGradientColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_10indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_10PickersBaseTextStyle,
      hourMinuteTextStyle: theme_10PickersBaseTextStyle,
      dialTextStyle: theme_10PickersBaseTextStyle,
      dialHandColor: theme_10indicatorColor, // color handles
      hourMinuteTextColor: theme_10baseTextColor, // text colors
      backgroundColor: theme_10TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_10baseTextColor; // selected element text color
        }
        return  theme_10lastGradientColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_10baseTextColor; // selected element text color
        }
        return  theme_10lastGradientColor; // unselected element text color
      }),
      entryModeIconColor: theme_10baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_10indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_10TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_10indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_10baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: theme_10baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_10TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_10lastGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: theme_10baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_10lastGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_10TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_10unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_10TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_10TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_10unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_10unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_10unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_10TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_10indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_10baseTextColor,
      unselectedLabelColor: theme_10unselectedColor,
      unselectedLabelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_10unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_10baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_10indicatorColor,
        inactiveTrackColor: theme_10unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

