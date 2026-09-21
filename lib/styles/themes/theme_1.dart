import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/dimensions/size_info.dart';

const theme_1MainBackgroundColor = Color(0xFFE9E9E9); //main-background
const theme_1PatternColor = Color(0xFFDBDBDB); //pattern
const theme_1CardBackgroundColor = Color(0xFFF5F5F5); //card-background
const theme_1TimerTextColor = Color(0xFFF5F5F5); //timer-text
const theme_1CardTimerFirstColor = Color(0xFF103FA7); //card-timer-first
const theme_1CardTimerMiddleColor = Color(0xFF0E348B); //card-timer-middle
const theme_1CardTimerLastColor = Color(0xFF0B2A6F); //card-timer-last
const theme_1UnselectedTaskTimerColor = Color(0xFF061841); //unselected-task-timer
const theme_1ButtonOutlineColor = Color(0xFF061841); //button-outline
const theme_1BaseTextColor = Color(0xFF061841); //base-text
const theme_1Accent1Color = Color(0xFFFBC720); //accent-1
const theme_1Accent2Color = Color(0xFFF3A22B); //accent-2
const theme_1Accent3Color = Color(0xFFE1663F); //accent-3
const theme_1ErrorColor = Color(0xFFFF5252); //error
const theme_1UnselectedColor = Color(0xFF9E9E9E); //unselected
const theme_1DividerColor = Color(0xFF9E9E9E); //divider
const theme_1ShadowColor = Color(0xCCAFAFAF); //shadow
const theme_1FabIconColor = Color(0xFF061841); //fab-icon
const theme_1CalendarCellSelectedColor = Color(0xFF1551D6); //calendar-cell-selected
const theme_1CalendarSelectedTextColor = Color(0xFFF5F5F5); //calendar-selected-text
const theme_1CalendarBaseTextColor = Color(0xFF061841); //calendar-base-text
const theme_1CalendarWeekendTextColor = Color(0xFFFBC720); //calendar-weekend-text
const theme_1CalendarNextMonthColor = Color(0xFF9E9E9E); //calendar-next-month

const theme_1SplashColor = Colors.transparent;

final themeDefPickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_1BaseTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
);

final themeDefPickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_1BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
);
//TEXT STYLES:
//headers:
//Large header:

final TextStyle largeHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_1BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  ),
);
//Subtitle header:

final TextStyle subtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_1BaseTextColor,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
  ),
);
//task & note card style:
//title text style:

final TextStyle cardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_1BaseTextColor,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
  ),
);
//content text:

final TextStyle contentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_1BaseTextColor,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
  ),
);
//unselected text (is done):

final TextStyle unselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_1UnselectedColor,
    fontWeight: FontWeight.w500,
    decorationColor: theme_1DividerColor,
    decoration: TextDecoration.lineThrough,
  ),
);
//calendar text style:
//day text style:

final calendarDayWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_1UnselectedColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_1DividerColor,
  ),
);
//calendar selected text style:

final calendarSelectedDayTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_1CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_1CalendarSelectedTextColor,
  ),
);
//next month text style:

final calendarNextMonthTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_1CalendarNextMonthColor,
    fontWeight: FontWeight.w500,
    decorationColor: theme_1CalendarNextMonthColor,
  ),
);
//weekend text style

final calendarWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_1CalendarWeekendTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_1CalendarWeekendTextColor,
  ),
);

final theme_1 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_1MainBackgroundColor,

  colorScheme: const ColorScheme(
    primary: theme_1FabIconColor,
    primaryFixed: theme_1Accent3Color,
    secondaryFixed: theme_1Accent2Color,
    secondary: theme_1TimerTextColor,
    surface: theme_1CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_1CalendarCellSelectedColor,
    onSecondary: theme_1UnselectedTaskTimerColor,
    onSurface: theme_1CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_1PatternColor,
    brightness: Brightness.light,
    shadow: theme_1CardTimerLastColor,
    outline: theme_1ButtonOutlineColor,
  ),
  highlightColor: Colors.transparent,
  splashColor: theme_1SplashColor,
  splashFactory: NoSplash.splashFactory,
  canvasColor: theme_1CardBackgroundColor,
  focusColor: theme_1CardTimerFirstColor,
  unselectedWidgetColor: theme_1UnselectedColor,
  primaryColor: theme_1CardTimerFirstColor,
  primaryColorLight: theme_1CardTimerMiddleColor,
  primaryColorDark: theme_1CardTimerLastColor,
  cardColor: theme_1CardBackgroundColor,
  indicatorColor: theme_1Accent1Color,
  shadowColor: theme_1ShadowColor,
  dialogBackgroundColor: theme_1CardTimerLastColor,
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

    titleSmall: calendarSelectedDayTextStyle,
    ///calendar default text style
    labelLarge: calendarDayWeekendTextStyle,
    //calendar next month text style:
    labelSmall: calendarNextMonthTextStyle,

    ///calendar weekend text style:
    labelMedium: calendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_1Accent1Color,
    selectionColor: theme_1UnselectedColor,
    cursorColor: theme_1Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_1DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,

    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_1Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_1UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.openSans(
      textStyle: const TextStyle(
        color: theme_1BaseTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w900,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.openSans(
      textStyle: const TextStyle(
        color: theme_1UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w900,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_1Accent1Color, size: 18),
  buttonTheme: ButtonThemeData(

  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.transparent),
      // foregroundColor: WidgetStatePropertyAll(Colors.transparent),
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      surfaceTintColor: WidgetStatePropertyAll(Colors.transparent),
      splashFactory: NoSplash.splashFactory,
      textStyle: WidgetStateTextStyle.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_1Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_1Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_1BaseTextColor,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        }
      }),
    ),
  ),
  cardTheme: const CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    shadowColor: theme_1UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1MainBackgroundColor;
      } else {
        return Colors.transparent;//theme_1ShadowColor;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1Accent1Color;
      } else {
        return theme_1UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1MainBackgroundColor;
      } else {
        return theme_1MainBackgroundColor;
      }
    }),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    sizeConstraints: BoxConstraints(
      maxWidth: 52,
      maxHeight: 52,
      minHeight: 48,
      minWidth: 48,
    ),
    backgroundColor: theme_1Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: subtitleHeaderTextStyle,
    contentTextStyle: contentTextStyle,
    backgroundColor: theme_1MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    inputDecorationTheme: InputDecorationTheme(),
    headerBackgroundColor: theme_1CardTimerMiddleColor,
    headerHeadlineStyle: themeDefPickersTitleTextStyle,
    headerForegroundColor: theme_1BaseTextColor,
    weekdayStyle: themeDefPickersBaseTextStyle,
    dayStyle: themeDefPickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_1Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(SizeInfo.innerCardCornerRadius)),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_1BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_1BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_1CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_1UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_1BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: BorderSide(color: theme_1UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(SizeInfo.innerCardCornerRadius)),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_1BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1BaseTextColor; // selected element text color
      }
      return theme_1UnselectedColor; // unselected element text color
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1Accent1Color.withValues(alpha: 0.5);
      }
      return theme_1UnselectedColor; // unselected element text color
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1BaseTextColor; // selected element text color
      }
      return theme_1UnselectedColor; // unselected element text color
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_1Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: themeDefPickersBaseTextStyle,
    hourMinuteTextStyle: themeDefPickersBaseTextStyle,
    dialTextStyle: themeDefPickersBaseTextStyle,
    dialHandColor: theme_1Accent1Color, // color handles
    hourMinuteTextColor: theme_1BaseTextColor, // text colors
    backgroundColor: theme_1CardBackgroundColor, // background color
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1BaseTextColor; // selected element text color
      }
      return theme_1UnselectedColor; // unselected element text color
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1BaseTextColor; // selected element text color
      }
      return theme_1UnselectedColor; // unselected element text color
    }),
    entryModeIconColor: theme_1BaseTextColor, // entry mode icon color
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_1Accent1Color.withOpacity(
          0.5,
        ); // selected hour/minute background color
      }
      return theme_1CardBackgroundColor; // unselected hour/minute background color
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_1Accent1Color.withOpacity(0.5),
      ),
      foregroundColor: WidgetStateProperty.all(theme_1BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_1BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(SizeInfo.innerCardCornerRadius)),
        ),
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_1CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_1UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_1BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: BorderSide(color: theme_1UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(SizeInfo.innerCardCornerRadius)),
        ),
      ),
    ),
  ),

  menuButtonTheme: MenuButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_1UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_1BaseTextColor,
            fontSize: 10,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,

    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: .5, color: Colors.transparent),
    ),

    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: .5, color: theme_1UnselectedColor),
    ),
    activeIndicatorBorder: BorderSide(
      width: .5,
      color: theme_1UnselectedColor,
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_1UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_1CardBackgroundColor),
    floatingLabelStyle: TextStyle(
      color: theme_1BaseTextColor,
      fontSize: 8.0,
      backgroundColor: theme_1UnselectedColor,
    ),
    helperMaxLines: 1,
    helperStyle: TextStyle(color: theme_1UnselectedColor, fontSize: 8.0),
    labelStyle: TextStyle(color: theme_1UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_1UnselectedColor),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.transparent,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: (Radius.circular(15)),
        right: (Radius.circular(15)),
      ),
    ),
  ),
  tabBarTheme: TabBarThemeData(
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(width: 2.0, color: theme_1Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_1BaseTextColor,
    unselectedLabelColor: theme_1UnselectedColor,
    unselectedLabelStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_1UnselectedColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_1BaseTextColor,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_1Accent1Color,
    inactiveTrackColor: theme_1UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
  tooltipTheme: TooltipThemeData(
    textStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        color: theme_1BaseTextColor,
        fontSize: 12,
      ),
    ),
    decoration: BoxDecoration(
      color: theme_1CardBackgroundColor,
      borderRadius: BorderRadius.circular(SizeInfo.innerCardCornerRadius),
    ),
  ),
);
