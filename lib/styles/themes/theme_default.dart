import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const themeDefAMainBcgColor = Color(0xFFE9E9E9);
const themeDefTitleBoxBcgColor = Color(0xFFf5f5f5);

const themeDefFirstGradientColor = Color(0xFF2592F0);
const themeDefMiddleGradientColor = Color(0xFF335CCC);
const themeDefLastGradientColor = Color(0xFF2D32B3);
const themeDefUnselectedTaskIcon = Color(0xFF1B3A7B);
const themeDefOutlineColor = Color(0xFF292EA9);

const themeDefDividerColor = Color(0xFF9e9e9e);
const themeDefUnselectedColor = Color(0xFF9e9e9e);
const themeDefShadowColor = Color(0xFFe5e5e5);

const themeDefIndicatorColor = Color(0xfffbc720);
const themeDefCalendarMarkerColorOne = Color(0xFFCD664C); // 3F51B5 EF6C00
const themeDefCalendarMarkerColorTwo = Color(0xFFE08D52); // 3F51B5 EF6C00

const themeDefBaseTextColor = Color(0xff161616);
const themeDefBtnTextColor = Color(0xff161616);

const themeDefSplashColor = Colors.transparent;

final themeDefPickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: themeDefBaseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final themeDefPickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      color: themeDefBaseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w600),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle largeHeaderTextStyle  = GoogleFonts.exo2(
    textStyle: const TextStyle(
        color: themeDefBaseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w600
    ));
//Subtitle header:
final TextStyle subtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 18,
      color: themeDefBaseTextColor,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle cardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: themeDefBaseTextColor,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle contentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: themeDefBaseTextColor,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle unselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: themeDefUnselectedColor,
      fontWeight: FontWeight.w500,
      decorationColor: themeDefDividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final calendarDayWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: themeDefUnselectedColor,
        fontWeight: FontWeight.w600,
        decorationColor: themeDefDividerColor));

//next month text style:
final calendarNextMonthTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
      fontSize: 12,
      color: themeDefUnselectedColor,
      fontWeight: FontWeight.w500,
      decorationColor: themeDefUnselectedColor));

final calendarWeekendTextStyle = GoogleFonts.exo2(
    textStyle: const TextStyle(
        fontSize: 12,
        color: themeDefIndicatorColor,
        fontWeight: FontWeight.w600,
        decorationColor: themeDefIndicatorColor));



final themeDefault = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: themeDefAMainBcgColor,

    colorScheme: const ColorScheme(
      primary: themeDefBtnTextColor,
      primaryFixed: themeDefCalendarMarkerColorOne,
      secondaryFixed: themeDefCalendarMarkerColorTwo,
      secondary: themeDefTitleBoxBcgColor,
      surface: themeDefTitleBoxBcgColor,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: themeDefUnselectedTaskIcon,
      onSurface: themeDefTitleBoxBcgColor,
      onError: Colors.white,
      brightness: Brightness.light,
        shadow: themeDefLastGradientColor,
      outline: themeDefOutlineColor
    ),
    highlightColor:Colors.transparent,
    splashColor: themeDefSplashColor,
    splashFactory: NoSplash.splashFactory,
    canvasColor: themeDefTitleBoxBcgColor,
    focusColor: themeDefFirstGradientColor,
    unselectedWidgetColor: themeDefUnselectedColor,
    primaryColor: themeDefFirstGradientColor,
    primaryColorLight: themeDefMiddleGradientColor,
    primaryColorDark: themeDefLastGradientColor,
    cardColor: themeDefTitleBoxBcgColor,
    indicatorColor: themeDefIndicatorColor,
    shadowColor: themeDefShadowColor,
    dialogBackgroundColor: themeDefLastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: cardTitleTextStyle,
      ///unselected text
      displayMedium: unselectedTextStyle,
      //content text style
      bodyMedium: contentTextStyle,
      ///calendar default text style
      labelLarge: calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: themeDefIndicatorColor,
      selectionColor: themeDefUnselectedColor,
      cursorColor: themeDefIndicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: themeDefDividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,

      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
        color: themeDefIndicatorColor,
        fill: 0.0,
      ),
      // indicatorShape: RoundedRectangleBorder(
      //     side: BorderSide(
      //         color: Colors.red),
      //     borderRadius: BorderRadius.all(Radius.circular(10))),
      unselectedIconTheme: const IconThemeData(
          color: themeDefUnselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: themeDefBaseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            color: themeDefUnselectedColor,
            fontSize: 17,
            fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: themeDefIndicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: themeDefUnselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return themeDefUnselectedColor;
          } else {
            return themeDefShadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return themeDefIndicatorColor;
          } else {
            return themeDefUnselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return themeDefUnselectedColor;
          } else {
            return themeDefShadowColor;
          }
        },
      ),),
    // outlinedButtonTheme: OutlinedButtonThemeData(
    //   style: ButtonStyle(
    //     textStyle: WidgetStateProperty.all(
    //         subtitleHeaderTextStyle
    //     ),
    //     padding: WidgetStateProperty.all(EdgeInsets.zero),
    //     side: WidgetStateProperty.all(
    //       BorderSide(
    //         width: 0.5,
    //           color: themeDefBaseTextColor
    //       )
    //     )
    //   )
    // ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: themeDefIndicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: subtitleHeaderTextStyle,
        contentTextStyle: contentTextStyle,
        backgroundColor: themeDefAMainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: themeDefMiddleGradientColor,
      headerHeadlineStyle: themeDefPickersTitleTextStyle,
      headerForegroundColor: themeDefBaseTextColor,
      weekdayStyle: themeDefPickersBaseTextStyle,
      dayStyle: themeDefPickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(themeDefIndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(themeDefBaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: themeDefBaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(themeDefTitleBoxBcgColor),
        foregroundColor: WidgetStateProperty.all(themeDefUnselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: themeDefBaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w200),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(color: themeDefUnselectedColor, width: 0.5),
            borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: themeDefBaseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return themeDefBaseTextColor; // selected element text color
        }
        return  themeDefUnselectedColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return themeDefIndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return themeDefIndicatorColor.withOpacity(0.5);
        }
        return  themeDefUnselectedColor; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return themeDefIndicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return themeDefBaseTextColor; // selected element text color
        }
        return  themeDefUnselectedColor; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: themeDefIndicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: themeDefPickersBaseTextStyle,
      hourMinuteTextStyle: themeDefPickersBaseTextStyle,
      dialTextStyle: themeDefPickersBaseTextStyle,
      dialHandColor: themeDefIndicatorColor, // color handles
      hourMinuteTextColor: themeDefBaseTextColor, // text colors
      backgroundColor: themeDefTitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
      return themeDefBaseTextColor; // selected element text color
      }
      return  themeDefUnselectedColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
      return themeDefBaseTextColor; // selected element text color
      }
      return  themeDefUnselectedColor; // unselected element text color
      }),
      entryModeIconColor: themeDefBaseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
      return themeDefIndicatorColor.withOpacity(0.5); // selected hour/minute background color
      }
      return  themeDefTitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(themeDefIndicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(themeDefBaseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
          textStyle: const TextStyle(
              color: themeDefBaseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(themeDefTitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(themeDefUnselectedColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
            textStyle: const TextStyle(
                color: themeDefBaseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: themeDefUnselectedColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    tooltipTheme:TooltipThemeData(
      textStyle: GoogleFonts.exo2(
          textStyle: const TextStyle(
              fontSize: 8.0,
              color: themeDefBaseTextColor,
              fontWeight: FontWeight.w400,)),
      decoration: BoxDecoration(
        color: themeDefUnselectedColor
      )
    ),

menuButtonTheme: MenuButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all(themeDefUnselectedColor),
    textStyle: WidgetStateProperty.all(GoogleFonts.exo2(
      textStyle: const TextStyle(
          color: themeDefBaseTextColor,
          fontSize: 10,
          fontWeight: FontWeight.w200),
    ),)
  )
),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,

      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: themeDefBaseTextColor,
      )),

      enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(width: .5, color: themeDefUnselectedColor)),
      activeIndicatorBorder: BorderSide(width: .5, color: themeDefUnselectedColor),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: themeDefBaseTextColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: themeDefTitleBoxBcgColor,
      ),
      floatingLabelStyle: TextStyle(
        color: themeDefBaseTextColor,
        fontSize: 8.0,
        backgroundColor: themeDefUnselectedColor
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: themeDefUnselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: themeDefUnselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: themeDefUnselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // themeDefATitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: themeDefIndicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: themeDefBaseTextColor,
      unselectedLabelColor: themeDefUnselectedColor,
      unselectedLabelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: themeDefUnselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.exo2(
        textStyle: const TextStyle(
            fontSize: 12,
            color: themeDefBaseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: themeDefIndicatorColor,
        inactiveTrackColor: themeDefUnselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);
