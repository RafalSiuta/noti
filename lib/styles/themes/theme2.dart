import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_2MainBcgColor = Color(0xFFE6E6E6);
const theme_2TitleBoxBcgColor = Color(0xFFF8F8F8);
const theme_2firstGradientColor = Color(0xFF979696);
const theme_2middleGradientColor = Color(0xFF7B7B7B);
const theme_2lastGradientColor = Color(0xFF575757);
const theme_2noteCardColor = Color(0xff161616);
const theme_2descriptionColor = Color(0xff161616);
const theme_2dividerColor = Color(0xFF636363);
const theme_2unselectedColor = Color(0xFF666666);
const theme_2shadowColor = Color(0xFFC0C0C0);
const theme_2indicatorColor = Color(0xFFEDBB4C);
const theme_2baseTextColor = Color(0xff161616);
const theme_2UnselectedTaskIcon = Color(0xFF5D5D5D);


final theme_2PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: theme_2baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_2PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      color: theme_2baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_2largeHeaderTextStyle  = GoogleFonts.inter(
    textStyle: const TextStyle(
        color: theme_2baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_2subtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_2baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_2cardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_2baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_2contentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_2baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_2unselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_2unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_2dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_2calendarDayWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_2unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_2dividerColor));

//next month text style:
final theme_2calendarNextMonthTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_2unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_2unselectedColor));

final theme_2calendarWeekendTextStyle = GoogleFonts.inter(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_2unselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_2dividerColor));



final theme2 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_2MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: theme_2TitleBoxBcgColor,
      surface: theme_2TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: theme_2UnselectedTaskIcon,
      onSurface: theme_2TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
        shadow: theme_2lastGradientColor
    ),
    canvasColor: theme_2TitleBoxBcgColor,
    focusColor: theme_2firstGradientColor,
    unselectedWidgetColor: theme_2unselectedColor,
    primaryColor: theme_2firstGradientColor,
    primaryColorLight: theme_2middleGradientColor,
    primaryColorDark: theme_2lastGradientColor,
    cardColor: theme_2TitleBoxBcgColor,
    indicatorColor: theme_2indicatorColor,
    shadowColor: theme_2shadowColor,
    dialogBackgroundColor: theme_2lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_2largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_2subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_2cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_2unselectedTextStyle,
      //content text style
      bodyMedium: theme_2contentTextStyle,
      ///calendar default text style
      labelLarge: theme_2calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_2calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_2calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme_2indicatorColor,
      selectionColor: theme_2unselectedColor,
      cursorColor: theme_2indicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_2dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_2indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_2unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_2baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_2unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_2indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_2unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_2unselectedColor;
          } else {
            return theme_2shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_2indicatorColor;
          } else {
            return theme_2unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_2unselectedColor;
          } else {
            return theme_2shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_2indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_2subtitleHeaderTextStyle,
        contentTextStyle: theme_2contentTextStyle,
        backgroundColor: theme_2MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_2indicatorColor,
      headerHeadlineStyle: theme_2PickersTitleTextStyle,
      headerForegroundColor: theme_2baseTextColor,
      weekdayStyle: theme_2PickersBaseTextStyle,
      dayStyle: theme_2PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_2indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_2baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme_2baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_2TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_2unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme_2baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_2unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_2baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_2baseTextColor; // selected element text color
        }
        return  theme_2unselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_2indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_2indicatorColor.withOpacity(0.5);
        }
        return  theme_2unselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_2indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_2baseTextColor; // selected element text color
        }
        return  theme_2unselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_2indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_2PickersBaseTextStyle,
      hourMinuteTextStyle: theme_2PickersBaseTextStyle,
      dialTextStyle: theme_2PickersBaseTextStyle,
      dialHandColor: theme_2indicatorColor, // color handles
      hourMinuteTextColor: theme_2baseTextColor, // text colors
      backgroundColor: theme_2TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_2baseTextColor; // selected element text color
        }
        return  theme_2unselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_2baseTextColor; // selected element text color
        }
        return  theme_2unselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme_2baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_2indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_2TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_2indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_2baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.inter(
          textStyle: const TextStyle(
              color: theme_2baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_2TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_2unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.inter(
            textStyle: const TextStyle(
                color: theme_2baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_2unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_2TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_2unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_2TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_2TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_2unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_2unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_2unselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme_2indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_2baseTextColor,
      unselectedLabelColor: theme_2unselectedColor,
      unselectedLabelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_2unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.inter(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_2baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_2indicatorColor,
        inactiveTrackColor: theme_2unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

