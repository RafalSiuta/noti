import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/dimensions/size_info.dart';

const theme_9MainBackgroundColor = Color(0xFFE9E9E9);
const theme_9PatternColor = Color(0xFFD9D9D9);
const theme_9CardBackgroundColor = Color(0xFFF5F5F5);
const theme_9TimerTextColor = Color(0xFFF5F5F5);
const theme_9CardTimerFirstColor = Color(0xFF366BE0);
const theme_9CardTimerMiddleColor = Color(0xFF0032A1);
const theme_9CardTimerLastColor = Color(0xFF0B2A70);
const theme_9UnselectedTaskTimerColor = Color(0xFF071C4A);
const theme_9ButtonOutlineColor = Color(0xFF011E62);
const theme_9BaseTextColor = Color(0xFF041B4B);
const theme_9Accent1Color = Color(0xFFFBC720);
const theme_9Accent2Color = Color(0xFFF3A22B);
const theme_9Accent3Color = Color(0xFFE1663F);
const theme_9ErrorColor = Color(0xFFFF5252);
const theme_9UnselectedColor = Color(0xFFC2C2C2);
const theme_9DividerColor = Color(0xFF9E9E9E);
const theme_9ShadowColor = Color(0xCC949494);
const theme_9FabIconColor = Color(0xFF041B4B);
const theme_9CalendarCellSelectedColor = Color(0xFF3B75F6);
const theme_9CalendarSelectedTextColor = Color(0xFF041B4B);
const theme_9CalendarBaseTextColor = Color(0xFF041B4B);
const theme_9CalendarWeekendTextColor = Color(0xFFE1663F);
const theme_9CalendarNextMonthColor = Color(0xFF8F8F8F);

const theme_9SplashColor = Colors.transparent;

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

final TextStyle cardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9BaseTextColor,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none,
  ),
);

final TextStyle contentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9BaseTextColor,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
  ),
);

final TextStyle unselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9UnselectedColor,
    fontWeight: FontWeight.w500,
    decorationColor: theme_9DividerColor,
    decoration: TextDecoration.lineThrough,
  ),
);

final calendarDayWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9UnselectedColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_9DividerColor,
  ),
);

final theme_9CalendarSelectedDayTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_9CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_9CalendarSelectedTextColor,
  ),
);

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

  colorScheme: ColorScheme(
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
    headlineLarge: largeHeaderTextStyle,

    headlineMedium: subtitleHeaderTextStyle,

    displayLarge: cardTitleTextStyle,

    displayMedium: unselectedTextStyle,

    bodyMedium: contentTextStyle,

    titleSmall: theme_9CalendarSelectedDayTextStyle,

    labelLarge: calendarDayWeekendTextStyle,

    labelSmall: calendarNextMonthTextStyle,

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
        return Colors.transparent;
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
        return theme_9MainBackgroundColor;
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
        theme_9Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
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
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
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
        return theme_9BaseTextColor;
      }
      return theme_9UnselectedColor;
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent;
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color.withValues(alpha: 0.5);
      }
      return theme_9UnselectedColor;
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent;
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9BaseTextColor;
      }
      return theme_9UnselectedColor;
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_9Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: themeDefPickersBaseTextStyle,
    hourMinuteTextStyle: themeDefPickersBaseTextStyle,
    dialTextStyle: themeDefPickersBaseTextStyle,
    dialHandColor: theme_9Accent1Color,
    hourMinuteTextColor: theme_9BaseTextColor,
    backgroundColor: theme_9CardBackgroundColor,
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9BaseTextColor;
      }
      return theme_9UnselectedColor;
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9BaseTextColor;
      }
      return theme_9UnselectedColor;
    }),
    entryModeIconColor: theme_9BaseTextColor,
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_9Accent1Color.withValues(alpha: 0.5);
      }
      return theme_9CardBackgroundColor;
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_9Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
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
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
    ),
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
    activeIndicatorBorder: BorderSide(width: .5, color: theme_9UnselectedColor),
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
  tooltipTheme: TooltipThemeData(
    textStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(color: theme_9BaseTextColor, fontSize: 12),
    ),
    decoration: BoxDecoration(
      color: theme_9CardBackgroundColor,
      borderRadius: BorderRadius.circular(SizeInfo.innerCardCornerRadius),
    ),
  ),
);
