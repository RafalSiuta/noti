import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/dimensions/size_info.dart';

const theme_3MainBackgroundColor = Color(0xFF1C232B);
const theme_3PatternColor = Color(0xFF202831);
const theme_3CardBackgroundColor = Color(0xFF202732);
const theme_3TimerTextColor = Color(0xFFAA8657);
const theme_3CardTimerFirstColor = Color(0xFF344051);
const theme_3CardTimerMiddleColor = Color(0xFF28323E);
const theme_3CardTimerLastColor = Color(0xFF1C232C);
const theme_3UnselectedTaskTimerColor = Color(0xFF101419);
const theme_3ButtonOutlineColor = Color(0xFF0B0F11);
const theme_3BaseTextColor = Color(0xFFA9A9A9);
const theme_3Accent1Color = Color(0xFFAA8657);
const theme_3Accent2Color = Color(0xFFAA6A56);
const theme_3Accent3Color = Color(0xFFA04F4F);
const theme_3ErrorColor = Color(0xFFFF5252);
const theme_3UnselectedColor = Color(0xFF101419);
const theme_3DividerColor = Color(0xFF070A0B);
const theme_3ShadowColor = Color(0xCC101519);
const theme_3FabIconColor = Color(0xFF1C232C);
const theme_3CalendarCellSelectedColor = Color(0xFF2F3A49);
const theme_3CalendarSelectedTextColor = Color(0xFFA9A9A9);
const theme_3CalendarBaseTextColor = Color(0xFFA9A9A9);
const theme_3CalendarWeekendTextColor = Color(0xFFAA8657);
const theme_3CalendarNextMonthColor = Color(0xFF101419);

const theme_3HelperTextColor = Color(0xff696969);
const theme_3PickerTextColor = Color(0xffA9A9A9);

final theme3PickersBaseTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_3PickerTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w200,
  ),
);

final theme3PickersTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_3BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w200,
  ),
);

final TextStyle theme3LargeHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    color: theme_3BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w300,
  ),
);

final TextStyle theme3SubtitleHeaderTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_3BaseTextColor,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme3CardTitleTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_3BaseTextColor,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme3ContentTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_3BaseTextColor,
    fontWeight: FontWeight.w200,
    decoration: TextDecoration.none,
  ),
);

final TextStyle theme3UnselectedTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_3UnselectedColor,
    fontWeight: FontWeight.w200,
    decorationColor: theme_3UnselectedColor,
    decoration: TextDecoration.lineThrough,
  ),
);

final theme3CalendarDayWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_3Accent1Color,
    fontWeight: FontWeight.w200,
    decorationColor: theme_3DividerColor,
  ),
);

final theme_3CalendarSelectedDayTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_3CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_3CalendarSelectedTextColor,
  ),
);

final theme3CalendarNextMonthTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_3BaseTextColor,
    fontWeight: FontWeight.w200,
    decorationColor: theme_3UnselectedColor,
  ),
);

final theme3CalendarWeekendTextStyle = GoogleFonts.exo2(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_3Accent1Color,
    fontWeight: FontWeight.w200,
    decorationColor: theme_3DividerColor,
  ),
);

final theme_3 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_3MainBackgroundColor,
  colorScheme: const ColorScheme(
    primary: theme_3FabIconColor,
    secondary: theme_3Accent1Color,
    primaryFixed: theme_3Accent3Color,
    secondaryFixed: theme_3Accent2Color,
    surface: theme_3CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_3CalendarCellSelectedColor,
    onSecondary: theme_3UnselectedTaskTimerColor,
    onSurface: theme_3CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_3PatternColor,
    brightness: Brightness.light,
    shadow: theme_3CardTimerLastColor,
    outline: theme_3ButtonOutlineColor,
  ),
  canvasColor: theme_3CardBackgroundColor,
  focusColor: theme_3CardTimerFirstColor,
  unselectedWidgetColor: theme_3UnselectedColor,
  primaryColor: theme_3CardTimerFirstColor,
  primaryColorLight: theme_3CardTimerMiddleColor,
  primaryColorDark: theme_3CardTimerLastColor,
  cardColor: theme_3CardBackgroundColor,
  indicatorColor: theme_3Accent1Color,
  shadowColor: theme_3ShadowColor,
  dialogBackgroundColor: theme_3CardTimerLastColor,
  primarySwatch: Colors.blue,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  textTheme: TextTheme(
    headlineLarge: theme3LargeHeaderTextStyle,

    headlineMedium: theme3SubtitleHeaderTextStyle,

    displayLarge: theme3CardTitleTextStyle,

    displayMedium: theme3UnselectedTextStyle,

    bodyMedium: theme3ContentTextStyle,

    titleSmall: theme_3CalendarSelectedDayTextStyle,

    labelLarge: theme3CalendarDayWeekendTextStyle,

    labelSmall: theme3CalendarNextMonthTextStyle,

    labelMedium: theme3CalendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_3Accent1Color,
    selectionColor: theme_3UnselectedColor,
    cursorColor: theme_3Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_3DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,
    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_3Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_3UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        color: theme_3BaseTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        color: theme_3UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_3Accent1Color, size: 18),
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
              color: theme_3Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_3Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_3BaseTextColor,
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
    shadowColor: theme_3UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3MainBackgroundColor;
      } else {
        return Colors.transparent;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color;
      } else {
        return theme_3UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3MainBackgroundColor;
      } else {
        return theme_3MainBackgroundColor;
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
    backgroundColor: theme_3Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: theme3SubtitleHeaderTextStyle,
    contentTextStyle: theme3ContentTextStyle,
    backgroundColor: theme_3MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerBackgroundColor: theme_3CardTimerMiddleColor,
    headerHeadlineStyle: theme3PickersTitleTextStyle,
    headerForegroundColor: theme_3BaseTextColor,
    weekdayStyle: theme3PickersBaseTextStyle,
    dayStyle: theme3PickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_3Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_3BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_3BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_3CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_3PickerTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_3BaseTextColor,
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
          side: const BorderSide(color: theme_3UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_3BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color;
      }
      return theme_3PickerTextColor;
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent;
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color.withValues(alpha: 0.5);
      }
      return theme_3UnselectedColor;
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent;
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color;
      }
      return theme_3PickerTextColor;
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_3Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: theme3PickersBaseTextStyle,
    hourMinuteTextStyle: theme3PickersBaseTextStyle,
    dialTextStyle: theme3PickersBaseTextStyle,
    dialHandColor: theme_3CardTimerFirstColor,
    hourMinuteTextColor: theme_3BaseTextColor,
    backgroundColor: theme_3CardBackgroundColor,
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color;
      }
      return theme_3PickerTextColor;
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color;
      }
      return theme_3PickerTextColor;
    }),
    entryModeIconColor: theme_3BaseTextColor,
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_3Accent1Color.withValues(alpha: 0.5);
      }
      return theme_3CardBackgroundColor;
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_3Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_3BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_3BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_3CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_3PickerTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.exo2(
          textStyle: const TextStyle(
            color: theme_3BaseTextColor,
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
          side: const BorderSide(color: theme_3UnselectedColor, width: 0.5),
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
      borderSide: BorderSide(width: .5, color: theme_3UnselectedColor),
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_3UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_3CardBackgroundColor),
    helperMaxLines: 1,
    helperStyle: TextStyle(
      color: theme_3HelperTextColor,
      fontSize: 8.0,
      fontWeight: FontWeight.bold,
    ),
    labelStyle: TextStyle(color: theme_3UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_3UnselectedColor),
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
      borderSide: BorderSide(width: 2.0, color: theme_3Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_3BaseTextColor,
    unselectedLabelColor: theme_3UnselectedColor,
    unselectedLabelStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_3UnselectedColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_3BaseTextColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_3Accent1Color,
    inactiveTrackColor: theme_3UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
  tooltipTheme: TooltipThemeData(
    textStyle: GoogleFonts.exo2(
      textStyle: const TextStyle(color: theme_3BaseTextColor, fontSize: 12),
    ),
    decoration: BoxDecoration(
      color: theme_3CardBackgroundColor,
      borderRadius: BorderRadius.circular(SizeInfo.innerCardCornerRadius),
    ),
  ),
);
