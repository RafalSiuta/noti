import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_9MainBackgroundColor = Color(0xFFE9E9E9); //main-background
const theme_9PatternColor = Color(0xFFD9D9D9); //pattern
const theme_9CardBackgroundColor = Color(0xFFF5F5F5); //card-background
const theme_9TimerTextColor = Color(0xFFF5F5F5); //timer-text
const theme_9CardTimerFirstColor = Color(0xFF366BE0); //card-timer-first
const theme_9CardTimerMiddleColor = Color(0xFF0032A1); //card-timer-middle
const theme_9CardTimerLastColor = Color(0xFF0B2A70); //card-timer-last
const theme_9UnselectedTaskTimerColor = Color(0xFF071C4A); //unselected-task-timer
const theme_9ButtonOutlineColor = Color(0xFF011E62); //button-outline
const theme_9BaseTextColor = Color(0xFF041B4B); //base-text
const theme_9Accent1Color = Color(0xFFFBC720); //accent-1
const theme_9Accent2Color = Color(0xFFF3A22B); //accent-2
const theme_9Accent3Color = Color(0xFFE1663F); //accent-3
const theme_9ErrorColor = Color(0xFFFF5252); //error
const theme_9UnselectedColor = Color(0xFFC2C2C2); //unselected
const theme_9DividerColor = Color(0xFF9E9E9E); //divider
const theme_9ShadowColor = Color(0xCC949494); //shadow
const theme_9FabIconColor = Color(0xFF041B4B); //fab-icon
const theme_9CalendarCellSelectedColor = Color(0xFF3B75F6); //calendar-cell-selected
const theme_9CalendarSelectedTextColor = Color(0xFF041B4B); //calendar-selected-text
const theme_9CalendarBaseTextColor = Color(0xFF041B4B); //calendar-base-text
const theme_9CalendarWeekendTextColor = Color(0xFFE1663F); //calendar-weekend-text
const theme_9CalendarNextMonthColor = Color(0xFF8F8F8F); //calendar-next-month

const theme_9SplashColor = Colors.transparent; //splash

final themeDefPickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_9BaseTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
);

final themeDefPickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_9BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
);

final TextStyle largeHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_9BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  ),
);

final TextStyle subtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_9BaseTextColor,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
  ),
);
//task & note card style:
//title text style:

final TextStyle cardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9BaseTextColor,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
  ),
);
//content text:

final TextStyle contentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9BaseTextColor,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
  ),
);
//unselected text (is done):

final TextStyle unselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9UnselectedColor,
    fontWeight: FontWeight.w500,
    decorationColor: theme_9DividerColor,
    decoration: TextDecoration.lineThrough,
  ),
);
//calendar text style:
//day text style:

final calendarDayWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9UnselectedColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_9DividerColor,
  ),
);

//calendar selected text style:

final theme_9CalendarSelectedDayTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_9CalendarSelectedTextColor,
  ),
);

//next month text style:

final calendarNextMonthTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9UnselectedColor,
    fontWeight: FontWeight.w500,
    decorationColor: theme_9UnselectedColor,
  ),
);

final calendarWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9Accent1Color,
    fontWeight: FontWeight.w600,
    decorationColor: theme_9Accent1Color,
  ),
);

final theme_9 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_9MainBackgroundColor,

  colorScheme:  ColorScheme(
    primary: theme_9FabIconColor,
    primaryFixed: theme_9Accent3Color,
    secondaryFixed: theme_9Accent2Color,
    secondary: theme_9CardBackgroundColor,
    surface: theme_9CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_9CalendarCellSelectedColor,
    onSecondary: theme_9UnselectedTaskTimerColor,
    onSurface: theme_9CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_9PatternColor,
    brightness: Brightness.light,
    shadow: theme_9CardTimerLastColor,
    outline: theme_9ButtonOutlineColor,
  ),
  highlightColor: Colors.transparent,
  splashColor: theme_9SplashColor,
  splashFactory: NoSplash.splashFactory,
  canvasColor: theme_9CardBackgroundColor,
  focusColor: theme_9CardTimerFirstColor,
  unselectedWidgetColor: theme_9UnselectedColor,
  primaryColor: theme_9CardTimerFirstColor,
  primaryColorLight: theme_9CardTimerMiddleColor,
  primaryColorDark: theme_9CardTimerLastColor,
  cardColor: theme_9CardBackgroundColor,
  indicatorColor: theme_9Accent1Color,
  shadowColor: theme_9ShadowColor,
  dialogBackgroundColor: theme_9CardTimerLastColor,
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

    titleSmall: theme_9CalendarSelectedDayTextStyle,
    ///calendar default text style
    labelLarge: calendarDayWeekendTextStyle,
    //calendar next month text style:
    labelSmall: calendarNextMonthTextStyle,

    ///calendar weekend text style:
    labelMedium: calendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_9Accent1Color,
    selectionColor: theme_9UnselectedColor,
    cursorColor: theme_9Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_9DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,

    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_9Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_9UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.openSans(
      textStyle: const TextStyle(
        color: theme_9BaseTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w900,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.openSans(
      textStyle: const TextStyle(
        color: theme_9UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w900,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_9Accent1Color, size: 18),
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
              color: theme_9Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_9Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_9BaseTextColor,
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
    shadowColor: theme_9UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9MainBackgroundColor;
      } else {
        return theme_9ShadowColor;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color;
      } else {
        return theme_9UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9MainBackgroundColor;
      } else {
        return theme_9ShadowColor;
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
    backgroundColor: theme_9Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: subtitleHeaderTextStyle,
    contentTextStyle: contentTextStyle,
    backgroundColor: theme_9MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    inputDecorationTheme: InputDecorationTheme(),
    headerBackgroundColor: theme_9CardTimerFirstColor,
    headerHeadlineStyle: themeDefPickersTitleTextStyle,
    headerForegroundColor: theme_9BaseTextColor,
    weekdayStyle: themeDefPickersBaseTextStyle,
    dayStyle: themeDefPickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_9Accent1Color.withOpacity(0.5),
      ),
      foregroundColor: WidgetStateProperty.all(theme_9BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_9BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_9CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_9UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_9BaseTextColor,
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
          side: BorderSide(color: theme_9UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_9BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9BaseTextColor; // selected element text color
      }
      return theme_9UnselectedColor; // unselected element text color
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color.withOpacity(0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color.withOpacity(0.5);
      }
      return theme_9UnselectedColor; // unselected element text color
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color.withOpacity(0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9BaseTextColor; // selected element text color
      }
      return theme_9UnselectedColor; // unselected element text color
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_9Accent1Color.withOpacity(0.5),
    dayPeriodTextStyle: themeDefPickersBaseTextStyle,
    hourMinuteTextStyle: themeDefPickersBaseTextStyle,
    dialTextStyle: themeDefPickersBaseTextStyle,
    dialHandColor: theme_9Accent1Color, // color handles
    hourMinuteTextColor: theme_9BaseTextColor, // text colors
    backgroundColor: theme_9CardBackgroundColor, // background color
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9BaseTextColor; // selected element text color
      }
      return theme_9UnselectedColor; // unselected element text color
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9BaseTextColor; // selected element text color
      }
      return theme_9UnselectedColor; // unselected element text color
    }),
    entryModeIconColor: theme_9BaseTextColor, // entry mode icon color
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color.withValues(
          alpha: 0.5,
        ); // selected hour/minute background color
      }
      return theme_9CardBackgroundColor; // unselected hour/minute background color
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_9Accent1Color.withValues(alpha: 0.5),
      ),
      foregroundColor: WidgetStateProperty.all(theme_9BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_9BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_9CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_9UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_9BaseTextColor,
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
          side: BorderSide(color: theme_9UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ),
  tooltipTheme: TooltipThemeData(
    textStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 8.0,
        color: theme_9BaseTextColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    decoration: BoxDecoration(color: theme_9UnselectedColor),
  ),

  menuButtonTheme: MenuButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_9UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_9BaseTextColor,
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
      borderSide: BorderSide(width: .5, color: theme_9UnselectedColor),
    ),
    activeIndicatorBorder: BorderSide(
      width: .5,
      color: theme_9UnselectedColor,
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_9UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_9CardBackgroundColor),
    floatingLabelStyle: TextStyle(
      color: theme_9BaseTextColor,
      fontSize: 8.0,
      backgroundColor: theme_9UnselectedColor,
    ),
    helperMaxLines: 1,
    helperStyle: TextStyle(color: theme_9UnselectedColor, fontSize: 8.0),
    labelStyle: TextStyle(color: theme_9UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_9UnselectedColor),
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
      borderSide: BorderSide(width: 2.0, color: theme_9Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_9BaseTextColor,
    unselectedLabelColor: theme_9UnselectedColor,
    unselectedLabelStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_9UnselectedColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_9BaseTextColor,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_9Accent1Color,
    inactiveTrackColor: theme_9UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
);
