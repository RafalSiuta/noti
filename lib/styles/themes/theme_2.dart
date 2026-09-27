import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/dimensions/size_info.dart';

const theme_2MainBackgroundColor = Color(0xFF24262E);
const theme_2PatternColor = Color(0xFF282B33);
const theme_2CardBackgroundColor = Color(0xFF2C303A);
const theme_2TimerTextColor = Color(0xFFB1B6C4);
const theme_2CardTimerFirstColor = Color(0xFF434B60);
const theme_2CardTimerMiddleColor = Color(0xFF373D4E);
const theme_2CardTimerLastColor = Color(0xFF2A2F3C);
const theme_2UnselectedTaskTimerColor = Color(0xFF191C24);
const theme_2ButtonOutlineColor = Color(0xFF24262E);
const theme_2BaseTextColor = Color(0xFFB1B6C4);

const theme_2Accent1Color = Color(0xFFFBC02D);
const theme_2Accent2Color = Color(0xFFEB8C47);
const theme_2Accent3Color = Color(0xFFCD664C);

const theme_2ErrorColor = Color(0xFFFF5252);
const theme_2UnselectedColor = Color(0xFF191C24);
const theme_2DividerColor = Color(0xFF444C5F);
const theme_2ShadowColor = Color(0xCC16181D);
const theme_2FabIconColor = Color(0xFF16181D);
const theme_2CalendarCellSelectedColor = Color(0xFF65718D);
const theme_2CalendarSelectedTextColor = Color(0xFFB1B6C4);
const theme_2CalendarBaseTextColor = Color(0xFFB1B6C4);
const theme_2CalendarWeekendTextColor = Color(0xFFFBC02D);
const theme_2CalendarNextMonthColor = Color(0xFF828AA1);

const theme_2PickerTextColor = Color(0xffA0A6B1);

final theme6PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_2PickerTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  ),
);

final theme6PickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_2BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  ),
);

final TextStyle theme6LargeHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_2BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w800,
  ),
);

final TextStyle theme6SubtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_2BaseTextColor,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme6CardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_2BaseTextColor,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme6ContentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_2BaseTextColor,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme6UnselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_2UnselectedColor,
    fontWeight: FontWeight.w300,
    decorationColor: theme_2UnselectedColor,
    decoration: TextDecoration.lineThrough,
  ),
);

final theme6CalendarDayWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_2Accent1Color,
    fontWeight: FontWeight.w300,
    decorationColor: theme_2DividerColor,
  ),
);

final theme_2CalendarSelectedDayTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_2CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_2CalendarSelectedTextColor,
  ),
);

final theme6CalendarNextMonthTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_2BaseTextColor,
    fontWeight: FontWeight.w100,
    decorationColor: theme_2UnselectedColor,
  ),
);

final theme6CalendarWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_2Accent1Color,
    fontWeight: FontWeight.w300,
    decorationColor: theme_2DividerColor,
  ),
);

final theme_2 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_2MainBackgroundColor,
  colorScheme: const ColorScheme(
    primary: theme_2FabIconColor,
    secondary: theme_2BaseTextColor,
    primaryFixed: theme_2Accent3Color,
    secondaryFixed: theme_2Accent2Color,
    surface: theme_2CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_2CalendarCellSelectedColor,
    onSecondary: theme_2UnselectedTaskTimerColor,
    onSurface: theme_2CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_2PatternColor,
    brightness: Brightness.light,
    shadow: theme_2CardTimerLastColor,
    outline: theme_2ButtonOutlineColor,
  ),
  canvasColor: theme_2CardBackgroundColor,
  focusColor: theme_2CardTimerFirstColor,
  unselectedWidgetColor: theme_2UnselectedColor,
  primaryColor: theme_2CardTimerFirstColor,
  primaryColorLight: theme_2CardTimerMiddleColor,
  primaryColorDark: theme_2CardTimerLastColor,
  cardColor: theme_2CardBackgroundColor,
  indicatorColor: theme_2Accent1Color,
  shadowColor: theme_2ShadowColor,
  dialogBackgroundColor: theme_2CardTimerLastColor,
  primarySwatch: Colors.blue,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  textTheme: TextTheme(
    headlineLarge: theme6LargeHeaderTextStyle,

    headlineMedium: theme6SubtitleHeaderTextStyle,

    displayLarge: theme6CardTitleTextStyle,

    displayMedium: theme6UnselectedTextStyle,

    bodyMedium: theme6ContentTextStyle,

    titleSmall: theme_2CalendarSelectedDayTextStyle,

    labelLarge: theme6CalendarDayWeekendTextStyle,

    labelSmall: theme6CalendarNextMonthTextStyle,

    labelMedium: theme6CalendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_2Accent1Color,
    selectionColor: theme_2UnselectedColor,
    cursorColor: theme_2Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_2DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,
    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_2Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_2UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        color: theme_2BaseTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w800,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        color: theme_2UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_2Accent1Color, size: 18),
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
              color: theme_2Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_2Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_2BaseTextColor,
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
    shadowColor: theme_2UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2MainBackgroundColor;
      } else {
        return Colors.transparent;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2Accent1Color;
      } else {
        return theme_2UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2MainBackgroundColor;
      } else {
        return theme_2MainBackgroundColor;
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
    backgroundColor: theme_2Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: theme6SubtitleHeaderTextStyle,
    contentTextStyle: theme6ContentTextStyle,
    backgroundColor: theme_2MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerBackgroundColor: theme_2CardTimerMiddleColor,
    headerHeadlineStyle: theme6PickersTitleTextStyle,
    headerForegroundColor: theme_2BaseTextColor,
    weekdayStyle: theme6PickersBaseTextStyle,
    dayStyle: theme6PickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_2Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_2BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_2BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_2CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_2PickerTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_2BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: const BorderSide(color: theme_2UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_2BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2UnselectedColor;
      }
      return theme_2PickerTextColor;
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent;
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2Accent1Color.withValues(alpha: 0.5);
      }
      return theme_2UnselectedColor;
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent;
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2Accent1Color;
      }
      return theme_2PickerTextColor;
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_2Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: theme6PickersBaseTextStyle,
    hourMinuteTextStyle: theme6PickersBaseTextStyle,
    dialTextStyle: theme6PickersBaseTextStyle,
    dialHandColor: theme_2Accent1Color,
    hourMinuteTextColor: theme_2BaseTextColor,
    backgroundColor: theme_2CardBackgroundColor,
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2BaseTextColor;
      }
      return theme_2PickerTextColor;
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2UnselectedColor;
      }
      return theme_2PickerTextColor;
    }),
    entryModeIconColor: theme_2BaseTextColor,
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_2Accent1Color.withValues(alpha: 0.5);
      }
      return theme_2CardBackgroundColor;
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_2Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_2BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_2BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(theme_2CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_2PickerTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_2BaseTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          side: const BorderSide(color: theme_2UnselectedColor, width: 0.5),
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
      borderSide: BorderSide(width: .5, color: theme_2UnselectedColor),
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_2UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_2CardBackgroundColor),
    helperMaxLines: 1,
    helperStyle: TextStyle(color: theme_2BaseTextColor, fontSize: 8.0),
    labelStyle: TextStyle(color: theme_2UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_2UnselectedColor),
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
      borderSide: BorderSide(width: 2.0, color: theme_2Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_2BaseTextColor,
    unselectedLabelColor: theme_2UnselectedColor,
    unselectedLabelStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_2UnselectedColor,
        fontWeight: FontWeight.w100,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_2BaseTextColor,
        fontWeight: FontWeight.w100,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_2Accent1Color,
    inactiveTrackColor: theme_2UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
  tooltipTheme: TooltipThemeData(
    textStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(color: theme_2BaseTextColor, fontSize: 12),
    ),
    decoration: BoxDecoration(
      color: theme_2CardBackgroundColor,
      borderRadius: BorderRadius.circular(SizeInfo.innerCardCornerRadius),
    ),
  ),
);
