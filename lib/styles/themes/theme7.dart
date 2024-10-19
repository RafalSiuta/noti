import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_7MainBcgColor = Color(0xFF423D33);
const theme_7TitleBoxBcgColor = Color(0xFF554F41);
const theme_7firstGradientColor = Color(0xFF5D4028);
const theme_7middleGradientColor = Color(0xFFBC8355);
const theme_7lastGradientColor = Color(0xFFFCD5B5);
const theme_7hintColor = Colors.orange;
const theme_7noteCardColor = Color(0xFF625D52);
const theme_7descriptionColor = Color(0xFFA0A0A0);
const theme_7dividerColor = Color(0xFF636363);
const theme_7unselectedColor = Color(0xFF27241D);
const theme_7titleColor = Color(0xFFD3D1CC);
const theme_7calendarWeekendColor = Color(0xFFD3D1CC);
const theme_7indicatorColor = Colors.orange;

const theme_7shadowColor = Color(0xFF484435);
const theme_7baseTextColor = Color(0xFFD3D1CC);
const theme_7UnselectedTaskIcon = Color(0xFF4D3421);

final theme_7PickersBaseTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_7baseTextColor,
      fontSize: 12,
      fontWeight: FontWeight.w500),
);

final theme_7PickersTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      color: theme_7baseTextColor,
      fontSize: 18,
      fontWeight: FontWeight.w700),
);
//TEXT STYLES:
//headers:
//Large header:
final TextStyle theme_7largeHeaderTextStyle  = GoogleFonts.raleway(
    textStyle: const TextStyle(
        color: theme_7baseTextColor,
        fontSize: 32,
        fontWeight: FontWeight.w700
    ));
//Subtitle header:
final TextStyle theme_7subtitleHeaderTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 18,
      color: theme_7baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//task & note card style:
//title text style:
final TextStyle theme_7cardTitleTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_7baseTextColor,
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.none),
);
//content text:
final TextStyle theme_7contentTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_7baseTextColor,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none),
);
//unselected text (is done):
final TextStyle theme_7unselectedTextStyle = GoogleFonts.raleway(
  textStyle: const TextStyle(
      fontSize: 12,
      color: theme_7unselectedColor,
      fontWeight: FontWeight.w400,
      decorationColor: theme_7dividerColor,
      decoration: TextDecoration.lineThrough),
);
//calendar text style:
//day text style:
final theme_7calendarDayWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_7unselectedColor,
        fontWeight: FontWeight.w700,
        decorationColor: theme_7dividerColor));

//next month text style:
final theme_7calendarNextMonthTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_7indicatorColor,//theme_7unselectedColor,
        fontWeight: FontWeight.w200,
        decorationColor: theme_7unselectedColor));

final theme_7calendarWeekendTextStyle = GoogleFonts.raleway(
    textStyle: const TextStyle(
        fontSize: 12,
        color: theme_7indicatorColor,//theme_7unselectedColor,
        fontWeight: FontWeight.w400,
        decorationColor: theme_7dividerColor));



final theme7 = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: theme_7MainBcgColor,
    colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: theme_7baseTextColor,
        surface: theme_7TitleBoxBcgColor,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: theme_7UnselectedTaskIcon,
        onSurface: theme_7TitleBoxBcgColor,
        onError: Colors.white,
        brightness: Brightness.light,
        shadow: theme_7UnselectedTaskIcon
    ),
    canvasColor: theme_7TitleBoxBcgColor,
    focusColor: theme_7firstGradientColor,
    unselectedWidgetColor: theme_7unselectedColor,
    primaryColor: theme_7firstGradientColor,
    primaryColorLight: theme_7middleGradientColor,
    primaryColorDark: theme_7lastGradientColor,
    cardColor: theme_7TitleBoxBcgColor,
    indicatorColor: theme_7indicatorColor,
    shadowColor: theme_7shadowColor,
    dialogBackgroundColor: theme_7lastGradientColor,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      /// main big title
      headlineLarge: theme_7largeHeaderTextStyle,
      /// list title & small headers
      headlineMedium: theme_7subtitleHeaderTextStyle,
      ///note & task description text style date header style
      displayLarge: theme_7cardTitleTextStyle,
      ///unselected text
      displayMedium: theme_7unselectedTextStyle,
      //content text style
      bodyMedium: theme_7contentTextStyle,
      ///calendar default text style
      labelLarge: theme_7calendarDayWeekendTextStyle,
      //calendar next month text style:
      labelSmall: theme_7calendarNextMonthTextStyle,
      ///calendar weekend text style:
      labelMedium: theme_7calendarWeekendTextStyle,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: theme_7indicatorColor,
      selectionColor: theme_7unselectedColor,
      cursorColor: theme_7indicatorColor,
    ),
    dividerTheme: const DividerThemeData(
      color: theme_7dividerColor,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      groupAlignment: -0.5,
      useIndicator: true,
      indicatorColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(
          color: theme_7indicatorColor,
          fill: 0.0
      ),
      unselectedIconTheme: const IconThemeData(
          color: theme_7unselectedColor,fill: 0.0),
      selectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_7baseTextColor, fontSize: 18, fontWeight: FontWeight.w900,
          backgroundColor: Colors.transparent,
        ),
      ),
      unselectedLabelTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
          color: theme_7unselectedColor,
          fontSize: 17,
          fontWeight: FontWeight.w900,

        ),
      ),
    ),
    iconTheme: const IconThemeData(color: theme_7indicatorColor, size: 18),
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        shadowColor: theme_7unselectedColor,
        elevation: 5),
    switchTheme: SwitchThemeData(
      trackOutlineWidth:WidgetStateProperty.all(0.5),
      trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_7unselectedColor;
          } else {
            return theme_7shadowColor;
          }
        },
      ),
      thumbColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_7indicatorColor;
          } else {
            return theme_7unselectedColor;
          }
        },
      ),
      trackColor: WidgetStateProperty.resolveWith(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return theme_7unselectedColor;
          } else {
            return theme_7shadowColor;
          }
        },
      ),),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        sizeConstraints: BoxConstraints(maxWidth: 52, maxHeight: 52, minHeight: 48, minWidth: 48),
        backgroundColor: theme_7indicatorColor),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: theme_7subtitleHeaderTextStyle,
        contentTextStyle: theme_7contentTextStyle,
        backgroundColor: theme_7MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    datePickerTheme: DatePickerThemeData(
      inputDecorationTheme: InputDecorationTheme(

      ),
      headerBackgroundColor: theme_7indicatorColor,
      headerHeadlineStyle: theme_7PickersTitleTextStyle,
      headerForegroundColor: theme_7baseTextColor,
      weekdayStyle: theme_7PickersBaseTextStyle,
      dayStyle: theme_7PickersBaseTextStyle,
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_7indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_7unselectedColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_7baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_7TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_7firstGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_7baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_7firstGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
      todayBorder: const BorderSide(color: theme_7baseTextColor, style:BorderStyle.solid, width: 0.5),
      todayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_7baseTextColor; // selected element text color
        }
        return  theme_7lastGradientColor; // unselected element text color
      }),
      todayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_7indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayOverlayColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_7indicatorColor.withOpacity(0.5);
        }
        return theme_7lastGradientColor;; // unselected element text color
      }),
      dayBackgroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_7indicatorColor.withOpacity(0.5);
        }
        return  Colors.transparent; // unselected element text color
      }),
      dayForegroundColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_7baseTextColor; // selected element text color
        }
        return  theme_7lastGradientColor;; // unselected element text color
      }),

    ),
    timePickerTheme: TimePickerThemeData(
      elevation: 0.2,
      dayPeriodColor: theme_7indicatorColor.withOpacity(0.5),
      dayPeriodTextStyle: theme_7PickersBaseTextStyle,
      hourMinuteTextStyle: theme_7PickersBaseTextStyle,
      dialTextStyle: theme_7PickersBaseTextStyle,
      dialHandColor: theme_7indicatorColor, // color handles
      hourMinuteTextColor: theme_7baseTextColor, // text colors
      backgroundColor: theme_7TitleBoxBcgColor, // background color
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_7baseTextColor; // selected element text color
        }
        return  theme_7firstGradientColor; // unselected element text color
      }),
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_7baseTextColor; // selected element text color
        }
        return  theme_7lastGradientColor;; // unselected element text color
      }),
      entryModeIconColor: theme_7baseTextColor, // entry mode icon color
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return theme_7indicatorColor.withOpacity(0.5); // selected hour/minute background color
        }
        return  theme_7TitleBoxBcgColor; // unselected hour/minute background color

      }),
      confirmButtonStyle: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(theme_7indicatorColor.withOpacity(0.5)),
        foregroundColor: WidgetStateProperty.all(theme_7baseTextColor),
        textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
          textStyle: const TextStyle(
              color: theme_7baseTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
      ),
      cancelButtonStyle: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(theme_7TitleBoxBcgColor),
          foregroundColor: WidgetStateProperty.all(theme_7firstGradientColor),
          textStyle: WidgetStateProperty.all(GoogleFonts.raleway(
            textStyle: const TextStyle(
                color: theme_7baseTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w200),
          ),),
          padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 8, horizontal: 10)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: theme_7firstGradientColor, width: 0.5),
              borderRadius: BorderRadius.circular(20) ))
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: .5,
            color: theme_7TitleBoxBcgColor,
          )),
      enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(width: .5, color: theme_7unselectedColor)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: theme_7TitleBoxBcgColor, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: theme_7TitleBoxBcgColor,
      ),
      helperMaxLines: 1,
      helperStyle: TextStyle(
        color: theme_7unselectedColor,
        fontSize: 8.0,
      ),
      labelStyle: TextStyle(
        color: theme_7unselectedColor,
        fontSize: 20,
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_7unselectedColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_7TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: theme_7indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: theme_7baseTextColor,
      unselectedLabelColor: theme_7unselectedColor,
      unselectedLabelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_7unselectedColor,
            fontWeight: FontWeight.w200,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.raleway(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_7baseTextColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none),
      ),
    ),
    sliderTheme: const SliderThemeData(
        trackHeight:1.5,
        activeTrackColor: theme_7indicatorColor,
        inactiveTrackColor: theme_7unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white)
);

