import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_3MainBcgColor = Color(0xFFFEFFE0);
const theme_3TitleBoxBcgColor = Color(0xFFfeffe3);

const theme_3ShapeLightGradient = Color(0xFFFF8D47);

const theme_3firstGradientColor = Color(0xFFFF8D47);
const theme_3middleGradientColor = Color(0xFFFFB43B);
const theme_3lastGradientColor = Color(0xFFFFDA3E);

const theme_3noteCardColor = Color(0xFFe8d4a9);
const theme_3dividerColor = Color(0xFF5B4835);
const theme_3shadowColor = Color(0xFFf9fad4);
const theme_3unselectedColor = Color(0xFF8c735c);
const theme_3weekendText = Color(0xFF9D4F00);
const theme_3indicatorColor = Colors.amber;

const theme_3baseTextColor = Color(0xFF5B4835);
const theme_3UnselectedTaskIcon = Color(0xFF9D4F00);

final theme_3PickersBaseTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      color: theme_3baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_3PickersTitleTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      color: theme_3baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_3largeHeaderTextStyle  = GoogleFonts.robotoSlab(
    textStyle: const TextStyle(
        color: theme_3baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_3subtitleHeaderTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_3baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_3cardTitleTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_3baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_3contentTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_3baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_3unselectedTextStyle = GoogleFonts.robotoSlab(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_3unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_3dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_3calendarDayWeekendTextStyle = GoogleFonts.robotoSlab(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_3unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_3dividerColor));

//next month text style:
final theme_3calendarNextMonthTextStyle = GoogleFonts.robotoSlab(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_3unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_3unselectedColor));

final theme_3calendarWeekendTextStyle = GoogleFonts.robotoSlab(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_3unselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_3dividerColor));



final theme3 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_3MainBcgColor,
    colorScheme: const ColorScheme(
      primary: Colors.white,
      secondary: theme_3TitleBoxBcgColor,
      surface: theme_3TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: theme_3UnselectedTaskIcon,
      onSurface: theme_3TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
        shadow: theme_3firstGradientColor
    ),
    canvasColor: theme_3TitleBoxBcgColor,
    focusColor: theme_3firstGradientColor,
    unselectedWidgetColor: theme_3unselectedColor,
    primaryColor: theme_3firstGradientColor,
    primaryColorLight: theme_3middleGradientColor,
    primaryColorDark: theme_3lastGradientColor,
    cardColor: theme_3TitleBoxBcgColor,
    indicatorColor: theme_3indicatorColor,
    shadowColor: theme_3shadowColor,
    dialogBackgroundColor: theme_3lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_3largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_3subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_3cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_3unselectedTextStyle,
      //content text style
      bodyMedium: theme_3contentTextStyle,
      ///calendar default text style
      labelLarge: theme_3calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_3calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_3calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_3dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_3indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_3unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_3baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_3unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_3indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_3unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_3unselectedColor;
          } else {
            return theme_3shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_3indicatorColor;
          } else {
            return theme_3unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_3unselectedColor;
          } else {
            return theme_3shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_3indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_3subtitleHeaderTextStyle,
        contentTextStyle: theme_3contentTextStyle,
        backgroundColor: theme_3MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_3indicatorColor,
      headerHeadlineStyle: theme_3PickersTitleTextStyle,
      headerForegroundColor: theme_3baseTextColor,
      weekdayStyle: theme_3PickersBaseTextStyle,
      dayStyle: theme_3PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_3indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_3baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
              color: theme_3baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_3TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_3unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
                color: theme_3baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_3unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_3baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_3baseTextColor; // selected element text color
        }
        return  theme_3unselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_3indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_3indicatorColor.withOpacity(0.5);
        }
        return  theme_3unselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_3indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_3baseTextColor; // selected element text color
        }
        return  theme_3unselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_3indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_3PickersBaseTextStyle,
      hourMinuteTextStyle: theme_3PickersBaseTextStyle,
      dialTextStyle: theme_3PickersBaseTextStyle,
      dialHandColor: theme_3indicatorColor, // color handles
      hourMinuteTextColor: theme_3baseTextColor, // text colors
      backgroundColor: theme_3TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_3baseTextColor; // selected element text color
        }
        return  theme_3unselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_3baseTextColor; // selected element text color
        }
        return  theme_3unselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme_3baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_3indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_3TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_3indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_3baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
              color: theme_3baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_3TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_3unselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.robotoSlab(
            textStyle: const TextStyle(
                color: theme_3baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_3unselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_3TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_3unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_3TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_3TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_3unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_3unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_3unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_3TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_3indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_3baseTextColor,
      unselectedLabelColor: theme_3unselectedColor,
      unselectedLabelStyle: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_3unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_3baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_3indicatorColor,
        inactiveTrackColor: theme_3unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

