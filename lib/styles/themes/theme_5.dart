import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_5MainBackgroundColor = Color(0xFFF7FDFD); //main-background
const theme_5PatternColor = Color(0xFFE0F5F5); //pattern
const theme_5CardBackgroundColor = Color(0xFFFFFFFF); //card-background
const theme_5TimerTextColor = Color(0xFFFFFFFF); //timer-text
const theme_5CardTimerFirstColor = Color(0xFFC1EAEB); //card-timer-first
const theme_5CardTimerMiddleColor = Color(0xFF8AC3C4); //card-timer-middle
const theme_5CardTimerLastColor = Color(0xFF6DB3B5); //card-timer-last
const theme_5UnselectedTaskTimerColor = Color(0xFF4B9395); //unselected-task-timer
const theme_5ButtonOutlineColor = Color(0xFF90A4A4); //button-outline
const theme_5BaseTextColor = Color(0xFF0C2627); //base-text
const theme_5Accent1Color = Color(0xFF26B6AB); //accent-1
const theme_5Accent2Color = Color(0xFF1B8880); //accent-2
const theme_5Accent3Color = Color(0xFF156660); //accent-3
const theme_5ErrorColor = Color(0xFFFF5252); //error
const theme_5UnselectedColor = Color(0xFF90A4A4); //unselected
const theme_5DividerColor = Color(0xFF0C2627); //divider
const theme_5ShadowColor = Color(0xCC7E9595); //shadow
const theme_5FabIconColor = Color(0xFF041B4B); //fab-icon
const theme_5CalendarCellSelectedColor = Color(0xFFD0FBFD); //calendar-cell-selected
const theme_5CalendarSelectedTextColor = Color(0xFF0C2627); //calendar-selected-text
const theme_5CalendarBaseTextColor = Color(0xFF0C2627); //calendar-base-text
const theme_5CalendarWeekendTextColor = Color(0xFF26B6AB); //calendar-weekend-text
const theme_5CalendarNextMonthColor = Color(0xFF184C4E); //calendar-next-month

final theme1PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_5BaseTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
);

final theme1PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    color: theme_5BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  ),
);
//TEXT STYLES:
//headers:
//Large header:

final TextStyle theme1LargeHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    color: theme_5BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  ),
);
//Subtitle header:

final TextStyle theme1SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_5BaseTextColor,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.none,
  ),
);
//task & note card style:
//title text style:

final TextStyle theme1CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_5BaseTextColor,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.none,
  ),
);
//content text:

final TextStyle theme1ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_5BaseTextColor,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
  ),
);
//unselected text (is done):

final TextStyle theme1UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_5UnselectedColor,
    fontWeight: FontWeight.w400,
    decorationColor: theme_5DividerColor,
    decoration: TextDecoration.lineThrough,
  ),
);
//calendar text style:
//day text style:

final theme1CalendarDayWeekendTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_5UnselectedColor,
    fontWeight: FontWeight.w700,
    decorationColor: theme_5DividerColor,
  ),
);

//calendar selected text style:

final theme_5CalendarSelectedDayTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_5CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_5CalendarSelectedTextColor,
  ),
);

//next month text style:

final theme1CalendarNextMonthTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_5UnselectedColor,
    fontWeight: FontWeight.w200,
    decorationColor: theme_5UnselectedColor,
  ),
);

final theme1CalendarWeekendTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_5UnselectedColor,
    fontWeight: FontWeight.w400,
    decorationColor: theme_5DividerColor,
  ),
);

final theme_5 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_5MainBackgroundColor,
  colorScheme: const ColorScheme(
    primary: theme_5FabIconColor,
    secondary: theme_5CardBackgroundColor,
    primaryFixed: theme_5Accent2Color,
    secondaryFixed: theme_5Accent3Color,
    surface: theme_5CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_5CalendarCellSelectedColor,
    onSecondary: theme_5UnselectedTaskTimerColor,
    onSurface: theme_5CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_5PatternColor,
    brightness: Brightness.light,
    shadow: theme_5CardTimerLastColor,
    outline: theme_5ButtonOutlineColor,
  ),
  canvasColor: theme_5CardBackgroundColor,
  focusColor: theme_5CardTimerFirstColor,
  unselectedWidgetColor: theme_5UnselectedColor,
  primaryColor: theme_5CardTimerFirstColor,
  primaryColorLight: theme_5CardTimerMiddleColor,
  primaryColorDark: theme_5CardTimerLastColor,
  cardColor: theme_5CardBackgroundColor,
  //todo: update material themes
  indicatorColor: theme_5Accent1Color,
  shadowColor: theme_5ShadowColor,
  dialogBackgroundColor: theme_5CardTimerLastColor,
  primarySwatch: Colors.blue,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  textTheme: TextTheme(
    /// main big title
    headlineLarge: theme1LargeHeaderTextStyle,

    /// list title & small headers
    headlineMedium: theme1SubtitleHeaderTextStyle,

    ///note & task description text style date header style
    displayLarge: theme1CardTitleTextStyle,

    ///unselected text
    displayMedium: theme1UnselectedTextStyle,
    //content text style
    bodyMedium: theme1ContentTextStyle,

    titleSmall: theme_5CalendarSelectedDayTextStyle,
    ///calendar default text style
    labelLarge: theme1CalendarDayWeekendTextStyle,
    //calendar next month text style:
    labelSmall: theme1CalendarNextMonthTextStyle,

    ///calendar weekend text style:
    labelMedium: theme1CalendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_5Accent1Color,
    selectionColor: theme_5UnselectedColor,
    cursorColor: theme_5Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_5DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,
    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_5Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_5UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.openSans(
      textStyle: const TextStyle(
        color: theme_5BaseTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w900,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.openSans(
      textStyle: const TextStyle(
        color: theme_5UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w900,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_5Accent1Color, size: 18),
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
              color: theme_5Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_5Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_5BaseTextColor,
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
    shadowColor: theme_5UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5MainBackgroundColor;
      } else {
        return theme_5ShadowColor;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5Accent1Color;
      } else {
        return theme_5UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5MainBackgroundColor;
      } else {
        return theme_5ShadowColor;
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
    backgroundColor: theme_5Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: theme1SubtitleHeaderTextStyle,
    contentTextStyle: theme1ContentTextStyle,
    backgroundColor: theme_5MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerBackgroundColor: theme_5CardTimerFirstColor,
    headerHeadlineStyle: theme1PickersTitleTextStyle,
    headerForegroundColor: theme_5BaseTextColor,
    weekdayStyle: theme1PickersBaseTextStyle,
    dayStyle: theme1PickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_5Accent1Color.withValues(alpha: 0.5),
      ),
      foregroundColor: WidgetStateProperty.all(theme_5BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          textStyle: const TextStyle(
            color: theme_5BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_5CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_5UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          textStyle: const TextStyle(
            color: theme_5BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: const BorderSide(color: theme_5UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_5BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5BaseTextColor; // selected element text color
      }
      return theme_5UnselectedColor; // unselected element text color
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5Accent1Color.withValues(alpha: 0.5);
      }
      return theme_5UnselectedColor; // unselected element text color
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5BaseTextColor; // selected element text color
      }
      return theme_5UnselectedColor; // unselected element text color
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_5Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: theme1PickersBaseTextStyle,
    hourMinuteTextStyle: theme1PickersBaseTextStyle,
    dialTextStyle: theme1PickersBaseTextStyle,
    dialHandColor: theme_5Accent1Color, // color handles
    hourMinuteTextColor: theme_5BaseTextColor, // text colors
    backgroundColor: theme_5CardBackgroundColor, // background color
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5BaseTextColor; // selected element text color
      }
      return theme_5UnselectedColor; // unselected element text color
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5BaseTextColor; // selected element text color
      }
      return theme_5UnselectedColor; // unselected element text color
    }),
    entryModeIconColor: theme_5BaseTextColor, // entry mode icon color
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_5Accent1Color.withValues(
          alpha: 0.5,
        ); // selected hour/minute background color
      }
      return theme_5CardBackgroundColor; // unselected hour/minute background color
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_5Accent1Color.withValues(alpha: 0.5),
      ),
      foregroundColor: WidgetStateProperty.all(theme_5BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          textStyle: const TextStyle(
            color: theme_5BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_5CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_5UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          textStyle: const TextStyle(
            color: theme_5BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: const BorderSide(color: theme_5UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.circular(20),
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
      borderSide: BorderSide(width: .5, color: theme_5UnselectedColor),
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_5UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_5CardBackgroundColor),
    helperMaxLines: 1,
    helperStyle: TextStyle(color: theme_5UnselectedColor, fontSize: 8.0),
    labelStyle: TextStyle(color: theme_5UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_5UnselectedColor),
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
      borderSide: BorderSide(width: 2.0, color: theme_5Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_5BaseTextColor,
    unselectedLabelColor: theme_5UnselectedColor,
    unselectedLabelStyle: GoogleFonts.inter(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_5UnselectedColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.inter(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_5BaseTextColor,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_5Accent1Color,
    inactiveTrackColor: theme_5UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
);
