import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_7MainBackgroundColor = Color(0xFF3C372E); //main-background
const theme_7PatternColor = Color(0xFF454035); //pattern
const theme_7CardBackgroundColor = Color(0xFF4B4639); //card-background
const theme_7TimerTextColor = Color(0xFFB5A792); //timer-text
const theme_7CardTimerFirstColor = Color(0xFF4B3321); //card-timer-first
const theme_7CardTimerMiddleColor = Color(0xFF60412A); //card-timer-middle
const theme_7CardTimerLastColor = Color(0xFF754F33); //card-timer-last
const theme_7UnselectedTaskTimerColor = Color(0xFF352417); //unselected-task-timer
const theme_7ButtonOutlineColor = Color(0xFFD89E71); //button-outline
const theme_7BaseTextColor = Color(0xFFB5A792); //base-text
const theme_7Accent1Color = Color(0xFFFFA726); //accent-1
const theme_7Accent2Color = Color(0xFFFF863B); //accent-2
const theme_7Accent3Color = Color(0xFFDC5A39); //accent-3
const theme_7ErrorColor = Color(0xFFFF5252); //error
const theme_7UnselectedColor = Color(0xFF28251F); //unselected
const theme_7DividerColor = Color(0xFF201D18); //divider
const theme_7ShadowColor = Color(0xCC201D18); //shadow
const theme_7FabIconColor = Color(0xFF3C372E); //fab-icon
const theme_7CalendarCellSelectedColor = Color(0xFF5B3E28); //calendar-cell-selected
const theme_7CalendarSelectedTextColor = Color(0xFFC9BFB0); //calendar-selected-text
const theme_7CalendarBaseTextColor = Color(0xFFB5A792); //calendar-base-text
const theme_7CalendarWeekendTextColor = Color(0xFFFFA726); //calendar-weekend-text
const theme_7CalendarNextMonthColor = Color(0xFFA08E73); //calendar-next-month

const theme_7HelperTextColor = Color(0xff8e8d87); //helper-text
const theme_7PickerTextColor = Color(0xffC6C4BD); //picker-text

final theme8PickersBaseTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: theme_7PickerTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ),
);

final theme8PickersTitleTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: theme_7BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  ),
);
//TEXT STYLES:
//headers:
//Large header:

final TextStyle theme8LargeHeaderTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: theme_7BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w400,
  ),
);
//Subtitle header:

final TextStyle theme8SubtitleHeaderTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_7BaseTextColor,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
  ),
);
//task & note card style:
//title text style:

final TextStyle theme8CardTitleTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_7BaseTextColor,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
  ),
);
//content text:

final TextStyle theme8ContentTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_7BaseTextColor,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
  ),
);
//unselected text (is done):

final TextStyle theme8UnselectedTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_7UnselectedColor,
    fontWeight: FontWeight.w400,
    decorationColor: theme_7UnselectedColor,
    decoration: TextDecoration.lineThrough,
  ),
);
//calendar text style:
//day text style:

final theme8CalendarDayWeekendTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_7Accent1Color,
    fontWeight: FontWeight.w400,
    decorationColor: theme_7DividerColor,
  ),
);

//calendar selected text style:

final theme_7CalendarSelectedDayTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_7CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_7CalendarSelectedTextColor,
  ),
);

//next month text style:

final theme8CalendarNextMonthTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_7BaseTextColor,
    fontWeight: FontWeight.w400,
    decorationColor: theme_7UnselectedColor,
  ),
);

final theme8CalendarWeekendTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_7Accent1Color,
    fontWeight: FontWeight.w400,
    decorationColor: theme_7DividerColor,
  ),
);

final theme_7 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_7MainBackgroundColor,
  colorScheme: const ColorScheme(
    primary: theme_7FabIconColor,
    secondary: theme_7BaseTextColor,
    primaryFixed: theme_7Accent2Color,
    secondaryFixed: theme_7Accent3Color,
    surface: theme_7CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_7CalendarCellSelectedColor,
    onSecondary: theme_7UnselectedTaskTimerColor,
    onSurface: theme_7CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_7PatternColor,
    brightness: Brightness.light,
    shadow: theme_7CardTimerLastColor,
    outline: theme_7ButtonOutlineColor,
  ),
  canvasColor: theme_7CardBackgroundColor,
  focusColor: theme_7CardTimerFirstColor,
  unselectedWidgetColor: theme_7UnselectedColor,
  primaryColor: theme_7CardTimerFirstColor,
  primaryColorLight: theme_7CardTimerMiddleColor,
  primaryColorDark: theme_7CardTimerLastColor,
  cardColor: theme_7CardBackgroundColor,
  indicatorColor: theme_7Accent1Color,
  shadowColor: theme_7ShadowColor,
  dialogBackgroundColor: theme_7CardTimerLastColor,
  primarySwatch: Colors.blue,
  highlightColor: Colors.transparent,
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

    titleSmall: theme_7CalendarSelectedDayTextStyle,
    ///calendar default text style
    labelLarge: theme8CalendarDayWeekendTextStyle,
    //calendar next month text style:
    labelSmall: theme8CalendarNextMonthTextStyle,

    ///calendar weekend text style:
    labelMedium: theme8CalendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_7Accent1Color,
    selectionColor: theme_7UnselectedColor,
    cursorColor: theme_7Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_7DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,
    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_7Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_7UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: theme_7BaseTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: theme_7UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_7Accent1Color, size: 18),
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
              color: theme_7Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_7Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_7BaseTextColor,
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
    shadowColor: theme_7UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7MainBackgroundColor;
      } else {
        return theme_7ShadowColor;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7Accent1Color;
      } else {
        return theme_7UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7MainBackgroundColor;
      } else {
        return theme_7ShadowColor;
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
    backgroundColor: theme_7Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: theme8SubtitleHeaderTextStyle,
    contentTextStyle: theme8ContentTextStyle,
    backgroundColor: theme_7MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerBackgroundColor: theme_7CardTimerMiddleColor,
    headerHeadlineStyle: theme8PickersTitleTextStyle,
    headerForegroundColor: theme_7BaseTextColor,
    weekdayStyle: theme8PickersBaseTextStyle,
    dayStyle: theme8PickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_7Accent1Color.withOpacity(0.5),
      ),
      foregroundColor: WidgetStateProperty.all(theme_7BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: theme_7BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_7CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_7PickerTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: theme_7BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: const BorderSide(color: theme_7UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_7BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7UnselectedColor; // selected element text color
      }
      return theme_7PickerTextColor; // unselected element text color
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7Accent1Color.withValues(alpha: 0.5);
      }
      return theme_7UnselectedColor; // unselected element text color
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7Accent1Color; // selected element text color
      }
      return theme_7PickerTextColor; // unselected element text color
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_7Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: theme8PickersBaseTextStyle,
    hourMinuteTextStyle: theme8PickersBaseTextStyle,
    dialTextStyle: theme8PickersBaseTextStyle,
    dialHandColor: theme_7Accent1Color, // color handles
    hourMinuteTextColor: theme_7BaseTextColor, // text colors
    backgroundColor: theme_7CardBackgroundColor, // background color
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7BaseTextColor; // selected element text color
      }
      return theme_7PickerTextColor; // unselected element text color
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7UnselectedColor; // selected element text color
      }
      return theme_7PickerTextColor; // unselected element text color
    }),
    entryModeIconColor: theme_7BaseTextColor, // entry mode icon color
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_7Accent1Color.withValues(
          alpha: 0.5,
        ); // selected hour/minute background color
      }
      return theme_7CardBackgroundColor; // unselected hour/minute background color
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_7Accent1Color.withValues(alpha: 0.5),
      ),
      foregroundColor: WidgetStateProperty.all(theme_7BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: theme_7BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_7CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_7PickerTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: theme_7BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: const BorderSide(color: theme_7UnselectedColor, width: 0.5),
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
      borderSide: BorderSide(width: .5, color: theme_7UnselectedColor),
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_7UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_7CardBackgroundColor),
    helperMaxLines: 1,
    helperStyle: TextStyle(
      color: theme_7HelperTextColor,
      fontSize: 8.0,
      fontWeight: FontWeight.bold,
    ),
    labelStyle: TextStyle(color: theme_7UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_7UnselectedColor),
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
      borderSide: BorderSide(width: 2.0, color: theme_7Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_7BaseTextColor,
    unselectedLabelColor: theme_7UnselectedColor,
    unselectedLabelStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_7UnselectedColor,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_7BaseTextColor,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_7Accent1Color,
    inactiveTrackColor: theme_7UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
);
