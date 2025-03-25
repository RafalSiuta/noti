import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme5MainBcgColor = Color(0xFFEAE7E1);
const theme5TitleBoxBcgColor = Color(0xFFF7F5F3);

const theme5SelDayColor = Color(0xFFBBA685);
const theme5FirstGradientColor = Color(0xFF9C8A6D);
const theme5MiddleGradientColor = Color(0xFFB5A892);
const theme5LastGradientColor = Color(0xFFC1B7A4);
const theme5UnselectedTaskIcon = Color(0xFF807157);
const theme5OutlineColor = Color(0xFF675C46);

const theme5DividerColor = Color(0xFF9F9A93);
const theme5UnselectedColor = Color(0xFF9F9A93);
const theme5ShadowColor = Color(0xFFE6E2DB);

const theme5IndicatorColor = Color(0xFFDBB136);
const theme5CalendarMarkerColorOne = Color(0xFFCD664C);// 3F51B5 EF6C00
const theme5CalendarMarkerColorTwo = Color(0xFFE09052);// 3F51B5 EF6C00

const theme5BaseTextColor = Color(0xff2E260F);
const theme5BtnTextColor = Color(0xffF7F5F3);

const theme5PickerTextColor = Color(0xFF2E260F);


final theme5PickersBaseTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      color: theme5PickerTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w300),
);

final theme5PickersTitleTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      color: theme5BaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w300),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme5LargeHeaderTextStyle  = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: theme5BaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w300
    ));
//Subtitle header:
final TextStyle theme5SubtitleHeaderTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme5BaseTextColor,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme5CardTitleTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme5BaseTextColor,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme5ContentTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme5BaseTextColor,
      fontWeight: FontWeight.w300,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme5UnselectedTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme5UnselectedColor,
      fontWeight: FontWeight.w200,
      decorationColor: theme5DividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme5CalendarDayWeekendTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme5IndicatorColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme5DividerColor));

//next month text style:
final theme5CalendarNextMonthTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme5OutlineColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme5UnselectedColor));

final theme5CalendarWeekendTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme5IndicatorColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme5DividerColor));



final theme5 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme5MainBcgColor,
    colorScheme: const ColorScheme(
        primary: theme5BtnTextColor,
        secondary: theme5TitleBoxBcgColor,
        primaryFixed:  theme5CalendarMarkerColorOne,
        secondaryFixed:  theme5CalendarMarkerColorTwo,
        surface: theme5TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: theme5SelDayColor,
        onSecondary: theme5UnselectedTaskIcon,
        onSurface: theme5TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme5LastGradientColor,
      outline: theme5OutlineColor
    ),
    canvasColor: theme5TitleBoxBcgColor,
    focusColor: theme5FirstGradientColor,
    unselectedWidgetColor: theme5UnselectedColor,
    primaryColor: theme5FirstGradientColor,
    primaryColorLight: theme5MiddleGradientColor,
    primaryColorDark: theme5LastGradientColor,
    cardColor: theme5TitleBoxBcgColor,
    indicatorColor: theme5IndicatorColor,
    shadowColor: theme5ShadowColor,
    dialogBackgroundColor: theme5LastGradientColor,
    primarySwatch: Colors.blue,
    highlightColor:Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme5LargeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme5SubtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme5CardTitleTextStyle,
      ///unselected text
      displayMedium: theme5UnselectedTextStyle,
      //content text style
      bodyMedium: theme5ContentTextStyle,
      ///calendar default text style
      labelLarge: theme5CalendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme5CalendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme5CalendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme5IndicatorColor,
      selectionColor: theme5UnselectedColor,
      cursorColor: theme5IndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme5DividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme5IndicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme5UnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: theme5IndicatorColor, fontSize: 18, fontWeight: FontWeight.w400,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: theme5UnselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w200,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme5IndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme5UnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme5UnselectedColor;
          } else {
            return theme5ShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme5IndicatorColor;
          } else {
            return theme5UnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme5UnselectedColor;
          } else {
            return theme5ShadowColor;
          }
        },
      ),),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme5IndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme5SubtitleHeaderTextStyle,
        contentTextStyle: theme5ContentTextStyle,
        backgroundColor: theme5MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: theme5FirstGradientColor,
      headerHeadlineStyle: theme5PickersTitleTextStyle,
      headerForegroundColor: theme5BaseTextColor,
      weekdayStyle: theme5PickersBaseTextStyle,
      dayStyle: theme5PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme5IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme5BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.poppins(
          textStyle: const TextStyle(
              color: theme5BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme5TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme5UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: theme5BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme5UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme5BaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme5BaseTextColor; // selected element text color
        }
        return  theme5UnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme5IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme5IndicatorColor.withOpacity(0.5);
        }
        return  theme5UnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme5IndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme5BaseTextColor; // selected element text color
        }
        return  theme5UnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme5IndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme5PickersBaseTextStyle,
      hourMinuteTextStyle: theme5PickersBaseTextStyle,
      dialTextStyle: theme5PickersBaseTextStyle,
      dialHandColor: theme5IndicatorColor, // color handles
      hourMinuteTextColor: theme5BaseTextColor, // text colors
      backgroundColor: theme5TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme5BaseTextColor; // selected element text color
        }
        return  theme5UnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme5BaseTextColor; // selected element text color
        }
        return  theme5UnselectedColor; // unselected element text color
      }),
      entryModeIconColor: theme5BaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme5IndicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme5TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme5IndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme5BaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.poppins(
          textStyle: const TextStyle(
              color: theme5BaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),),
        padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme5TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme5UnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.poppins(
            textStyle: const TextStyle(
                color: theme5BaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(const EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: const BorderSide(color: theme5UnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme5TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme5UnselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme5TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme5TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme5UnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme5UnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme5UnselectedColor,
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
          borderSide: BorderSide(width: 2.0, color: theme5IndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme5BaseTextColor,
      unselectedLabelColor: theme5UnselectedColor,
      unselectedLabelStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme5UnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme5BaseTextColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme5IndicatorColor,
        inactiveTrackColor: theme5UnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

