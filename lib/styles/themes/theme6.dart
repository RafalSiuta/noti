import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme8MainBcgColor = Color(0xFF3C372E);
const theme8TitleBoxBcgColor = Color(0xFF4B4639);

const theme8FirstGradientColor = Color(0xFF4B3321);
const theme8MiddleGradientColor = Color(0xFF835B3B);
const theme8LastGradientColor = Color(0xFFAA7850);
const theme8UnselectedTaskIcon = Color(0xFF523824);
const theme8OutlineColor = Color(0xFFD89E71);

const theme8DividerColor = Color(0xFF23201B);
const theme8UnselectedColor = Color(0xFF23201B);
const theme8ShadowColor = Color(0xFF433E34);

const theme8IndicatorColor = Color(0xFFFFA726);// 3F51B5 EF6C00
const theme8CalendarMarkerColorOne = Color(0xFFDC5A39);// 3F51B5 EF6C00
const theme8CalendarMarkerColorTwo = Color(0xFFFF863B);// 3F51B5 EF6C00

const theme8BaseTextColor = Color(0xffC6C4BD);
const theme8HelperTextColor = Color(0xff8e8d87);
const theme8BtnTextColor = Color(0xff27241D);
const theme8PickerTextColor = Color(0xffC6C4BD);

final theme8PickersBaseTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      color: theme8PickerTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w400),
);

final theme8PickersTitleTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      color: theme8BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w400),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme8LargeHeaderTextStyle  = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: theme8BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w400
    ));
//Subtitle header:
final TextStyle theme8SubtitleHeaderTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme8BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme8CardTitleTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme8BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme8ContentTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme8BaseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme8UnselectedTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme8UnselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme8UnselectedColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme8CalendarDayWeekendTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme8IndicatorColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme8DividerColor));

//next month text style:
final theme8CalendarNextMonthTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme8BaseTextColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme8UnselectedColor));

final theme8CalendarWeekendTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme8IndicatorColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme8DividerColor));



final theme8 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme8MainBcgColor,
    colorScheme: const ColorScheme(
      primary: theme8BtnTextColor,
      secondary: theme8BaseTextColor,
        primaryFixed: theme8CalendarMarkerColorOne,
        secondaryFixed: theme8CalendarMarkerColorTwo,
      surface: theme8TitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: theme8UnselectedTaskIcon,
      onSurface: theme8TitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
      shadow: theme8LastGradientColor,
      outline: theme8OutlineColor
    ),
    canvasColor: theme8TitleBoxBcgColor,
    focusColor: theme8FirstGradientColor,
    unselectedWidgetColor: theme8UnselectedColor,
    primaryColor: theme8FirstGradientColor,
    primaryColorLight: theme8MiddleGradientColor,
    primaryColorDark: theme8LastGradientColor,
    cardColor: theme8TitleBoxBcgColor,
    indicatorColor: theme8IndicatorColor,
    shadowColor: theme8ShadowColor,
    dialogBackgroundColor: theme8LastGradientColor,
    primarySwatch: Colors.blue,
    highlightColor:Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme8LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme8SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme8CardTitleTextStyle,
      ///unselected text
      displayMedium: theme8UnselectedTextStyle,
      //content text style
      bodyMedium: theme8ContentTextStyle,
      ///calendar default text style
      labelLarge: theme8CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme8CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme8CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme8IndicatorColor,
      selectionColor: theme8UnselectedColor,
      cursorColor: theme8IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme8DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme8IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme8UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: theme8BaseTextColor, fontSize: 18, fontWeight: FontWeight.w400,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: theme8UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w500,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme8IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme8UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme8UnselectedColor;
          } else {
            return theme8ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme8IndicatorColor;
          } else {
            return theme8UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme8UnselectedColor;
          } else {
            return theme8ShadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme8IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme8SubtitleHeaderTextStyle,
        contentTextStyle: theme8ContentTextStyle,
        backgroundColor: theme8MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme8MiddleGradientColor,
      headerHeadlineStyle: theme8PickersTitleTextStyle,
      headerForegroundColor: theme8BaseTextColor,
      weekdayStyle: theme8PickersBaseTextStyle,
      dayStyle: theme8PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme8IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme8BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.poppins(
          textStyle: const TextStyle(
              color: theme8BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme8TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme8PickerTextColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: theme8BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme8UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme8BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme8UnselectedColor; // selected element text color
        }
        return  theme8PickerTextColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme8IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme8IndicatorColor.withOpacity(0.5);
        }
        return  theme8UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme8IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme8IndicatorColor; // selected element text color
        }
        return  theme8PickerTextColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme8IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme8PickersBaseTextStyle,
      hourMinuteTextStyle: theme8PickersBaseTextStyle,
      dialTextStyle: theme8PickersBaseTextStyle,
      dialHandColor: theme8IndicatorColor, // color handles
      hourMinuteTextColor: theme8BaseTextColor, // text colors
      backgroundColor: theme8TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme8BaseTextColor; // selected element text color
        }
        return  theme8PickerTextColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme8UnselectedColor; // selected element text color
        }
        return  theme8PickerTextColor; // unselected element text color
      }),
      entryModeIconColor: theme8BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme8IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme8TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme8IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme8BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.poppins(
          textStyle: const TextStyle(
              color: theme8BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme8TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme8PickerTextColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: theme8BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme8UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme8TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme8UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme8TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme8TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme8HelperTextColor,
        fontSize: 8.0,
        fontWeight: FontWeight.bold
      ),
      labelStyle: TextStyle(
        color: theme8UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme8UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme8IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme8BaseTextColor,
      unselectedLabelColor: theme8UnselectedColor,
      unselectedLabelStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme8UnselectedColor,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme8BaseTextColor,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme8IndicatorColor,
        inactiveTrackColor: theme8UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

