import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/dimensions/size_info.dart';

const theme_6MainBackgroundColor = Color(0xFF111518);
const theme_6PatternColor = Color(0xFF191F24);
const theme_6CardBackgroundColor = Color(0xFF191F24);
const theme_6TimerTextColor = Color(0xFFA0A8BA);
const theme_6CardTimerFirstColor = Color(0xFF465936);
const theme_6CardTimerMiddleColor = Color(0xFF1B2D25);
const theme_6CardTimerLastColor = Color(0xFF151B1E);
const theme_6UnselectedTaskTimerColor = Color(0xFF0D1012);
const theme_6ButtonOutlineColor = Color(0xFF89B800);
const theme_6BaseTextColor = Color(0xFFA0A8BA);
const theme_6Accent1Color = Color(0xFF89B800);
const theme_6Accent2Color = Color(0xFFFF863B);
const theme_6Accent3Color = Color(0xFFFF5252);
const theme_6ErrorColor = Color(0xFFFF5252);
const theme_6UnselectedColor = Color(0xFF080A0C);
const theme_6DividerColor = Color(0xFF465936);
const theme_6ShadowColor = Color(0xCC040506);
const theme_6FabIconColor = Color(0xFF161616);
const theme_6CalendarCellSelectedColor = Color(0xFF658601);
const theme_6CalendarSelectedTextColor = Color(0xFFA0A8BA);
const theme_6CalendarBaseTextColor = Color(0xFFA0A8BA);
const theme_6CalendarWeekendTextColor = Color(0xFF89B800);
const theme_6CalendarNextMonthColor = Color(0xFF717D98);

const theme_6PickerTextColor = Color(0xffb6bcca);

final theme9PickersBaseTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    color: theme_6PickerTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w200,
  ),
);

final theme9PickersTitleTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    color: theme_6BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w200,
  ),
);

final TextStyle theme9LargeHeaderTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    color: theme_6BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w300,
  ),
);

final TextStyle theme9SubtitleHeaderTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_6BaseTextColor,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme9CardTitleTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_6BaseTextColor,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme9ContentTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_6BaseTextColor,
    fontWeight: FontWeight.w200,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme9UnselectedTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_6UnselectedColor,
    fontWeight: FontWeight.w200,
    decorationColor: theme_6UnselectedColor,
    decoration: TextDecoration.lineThrough,
  ),
);

final theme9CalendarDayWeekendTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_6Accent1Color,
    fontWeight: FontWeight.w200,
    decorationColor: theme_6DividerColor,
  ),
);

final theme_6CalendarSelectedDayTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_6CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_6CalendarSelectedTextColor,
  ),
);

final theme9CalendarNextMonthTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_6BaseTextColor,
    fontWeight: FontWeight.w200,
    decorationColor: theme_6UnselectedColor,
  ),
);

final theme9CalendarWeekendTextStyle = GoogleFonts.chakraPetch(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_6Accent1Color,
    fontWeight: FontWeight.w200,
    decorationColor: theme_6DividerColor,
  ),
);

final theme_6 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_6MainBackgroundColor,
  colorScheme: const ColorScheme(
    primary: theme_6FabIconColor,
    secondary: theme_6Accent1Color,
    primaryFixed: theme_6Accent3Color,
    secondaryFixed: theme_6Accent2Color,
    surface: theme_6CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_6CalendarCellSelectedColor,
    onSecondary: theme_6UnselectedTaskTimerColor,
    onSurface: theme_6CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_6PatternColor,
    brightness: Brightness.light,
    shadow: theme_6CardTimerLastColor,
    outline: theme_6ButtonOutlineColor,
  ),
  canvasColor: theme_6CardBackgroundColor,
  focusColor: theme_6CardTimerLastColor,
  unselectedWidgetColor: theme_6UnselectedColor,
  primaryColor: theme_6CardTimerFirstColor,
  primaryColorLight: theme_6CardTimerMiddleColor,
  primaryColorDark: theme_6CardTimerLastColor,
  cardColor: theme_6CardBackgroundColor,
  indicatorColor: theme_6Accent1Color,
  shadowColor: theme_6ShadowColor,
  dialogBackgroundColor: theme_6CardTimerLastColor,
  primarySwatch: Colors.blue,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  textTheme: TextTheme(
    headlineLarge: theme9LargeHeaderTextStyle,

    headlineMedium: theme9SubtitleHeaderTextStyle,

    displayLarge: theme9CardTitleTextStyle,

    displayMedium: theme9UnselectedTextStyle,

    bodyMedium: theme9ContentTextStyle,

    titleSmall: theme_6CalendarSelectedDayTextStyle,

    labelLarge: theme9CalendarDayWeekendTextStyle,

    labelSmall: theme9CalendarNextMonthTextStyle,

    labelMedium: theme9CalendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_6Accent1Color,
    selectionColor: theme_6UnselectedColor,
    cursorColor: theme_6Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_6DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,
    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_6Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_6UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.chakraPetch(
      textStyle: const TextStyle(
        color: theme_6BaseTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w800,
        letterSpacing: 2.0,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.chakraPetch(
      textStyle: const TextStyle(
        color: theme_6UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.0,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_6Accent1Color, size: 18),
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
              color: theme_6Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_6Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_6BaseTextColor,
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
    shadowColor: theme_6UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6MainBackgroundColor;
      } else {
        return Colors.transparent;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color;
      } else {
        return theme_6UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6MainBackgroundColor;
      } else {
        return theme_6MainBackgroundColor;
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
    backgroundColor: theme_6Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: theme9SubtitleHeaderTextStyle,
    contentTextStyle: theme9ContentTextStyle,
    backgroundColor: theme_6MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerBackgroundColor: theme_6CardTimerMiddleColor,
    headerHeadlineStyle: theme9PickersTitleTextStyle,
    headerForegroundColor: theme_6BaseTextColor,
    weekdayStyle: theme9PickersBaseTextStyle,
    dayStyle: theme9PickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_6Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_6BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.chakraPetch(
          textStyle: const TextStyle(
            color: theme_6BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_6CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_6PickerTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.chakraPetch(
          textStyle: const TextStyle(
            color: theme_6BaseTextColor,
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
          side: const BorderSide(color: theme_6UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_6BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color;
      }
      return theme_6PickerTextColor;
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent;
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color.withValues(alpha: 0.5);
      }
      return theme_6UnselectedColor;
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent;
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color;
      }
      return theme_6PickerTextColor;
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_6Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: theme9PickersBaseTextStyle,
    hourMinuteTextStyle: theme9PickersBaseTextStyle,
    dialTextStyle: theme9PickersBaseTextStyle,
    dialHandColor: theme_6CardTimerLastColor,
    hourMinuteTextColor: theme_6BaseTextColor,
    backgroundColor: theme_6CardBackgroundColor,
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color;
      }
      return theme_6PickerTextColor;
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color;
      }
      return theme_6PickerTextColor;
    }),
    entryModeIconColor: theme_6BaseTextColor,
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_6Accent1Color.withValues(alpha: 0.5);
      }
      return theme_6CardBackgroundColor;
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_6Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_6BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.chakraPetch(
          textStyle: const TextStyle(
            color: theme_6BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_6CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_6PickerTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.chakraPetch(
          textStyle: const TextStyle(
            color: theme_6BaseTextColor,
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
          side: const BorderSide(color: theme_6UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
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
      borderSide: BorderSide(width: .5, color: theme_6UnselectedColor),
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_6UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_6CardBackgroundColor),
    helperMaxLines: 1,
    helperStyle: TextStyle(
      color: theme_6BaseTextColor,
      fontSize: 8.0,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.8,
    ),
    labelStyle: TextStyle(color: theme_6UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_6UnselectedColor),
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
      borderSide: BorderSide(width: 2.0, color: theme_6Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_6BaseTextColor,
    unselectedLabelColor: theme_6UnselectedColor,
    unselectedLabelStyle: GoogleFonts.chakraPetch(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_6UnselectedColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.chakraPetch(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_6BaseTextColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_6Accent1Color,
    inactiveTrackColor: theme_6UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
  tooltipTheme: TooltipThemeData(
    textStyle: GoogleFonts.chakraPetch(
      textStyle: const TextStyle(color: theme_6BaseTextColor, fontSize: 12),
    ),
    decoration: BoxDecoration(
      color: theme_6CardBackgroundColor,
      borderRadius: BorderRadius.circular(SizeInfo.innerCardCornerRadius),
    ),
  ),
);
