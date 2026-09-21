import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/dimensions/size_info.dart';

const theme_4MainBackgroundColor = Color(0xFFE6E6E6); //main-background
const theme_4PatternColor = Color(0xFFD9D9D9); //pattern
const theme_4CardBackgroundColor = Color(0xFFF8F8F8); //card-background
const theme_4TimerTextColor = Color(0xFFF8F8F8); //timer-text
const theme_4CardTimerFirstColor = Color(0xFF757575); //card-timer-first
const theme_4CardTimerMiddleColor = Color(0xFF666666); //card-timer-middle
const theme_4CardTimerLastColor = Color(0xFF575757); //card-timer-last
const theme_4UnselectedTaskTimerColor = Color(
  0xFF474747,
); //unselected-task-timer
const theme_4ButtonOutlineColor = Color(0xFFA6A5A5); //button-outline
const theme_4BaseTextColor = Color(0xFF161616); //base-text
const theme_4Accent1Color = Color(0xFFEDBB4C); //accent-1
const theme_4Accent2Color = Color(0xFFE08D52); //accent-2
const theme_4Accent3Color = Color(0xFFCD664C); //accent-3
const theme_4ErrorColor = Color(0xFFFF5252); //error
const theme_4UnselectedColor = Color(0xFF999999); //unselected
const theme_4DividerColor = Color(0xFF636363); //divider
const theme_4ShadowColor = Color(0xCC949494); //shadow
const theme_4FabIconColor = Color(0xFF161616); //fab-icon
const theme_4CalendarCellSelectedColor = Color(
  0xFFA6A5A5,
); //calendar-cell-selected
const theme_4CalendarSelectedTextColor = Color(
  0xFFF8F8F8,
); //calendar-selected-text
const theme_4CalendarBaseTextColor = Color(0xFF161616); //calendar-base-text
const theme_4CalendarWeekendTextColor = Color(
  0xFFEDBB4C,
); //calendar-weekend-text
const theme_4CalendarNextMonthColor = Color(0xFF999999); //calendar-next-month

const theme_4PickerTextColor = Color(0xFF575757); //picker-text

final theme2PickersBaseTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    color: theme_4PickerTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
);

final theme2PickersTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    color: theme_4BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  ),
);
//TEXT STYLES:
//headers:
//Large header:

final TextStyle theme2LargeHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    color: theme_4BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  ),
);
//Subtitle header:

final TextStyle theme2SubtitleHeaderTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_4BaseTextColor,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.none,
  ),
);
//task & note card style:
//title text style:

final TextStyle theme2CardTitleTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_4BaseTextColor,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.none,
  ),
);
//content text:

final TextStyle theme2ContentTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_4BaseTextColor,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
  ),
);
//unselected text (is done):

final TextStyle theme2UnselectedTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_4UnselectedColor,
    fontWeight: FontWeight.w400,
    decorationColor: theme_4DividerColor,
    decoration: TextDecoration.lineThrough,
  ),
);
//calendar text style:
//day text style:

final theme2CalendarDayWeekendTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_4UnselectedColor,
    fontWeight: FontWeight.w700,
    decorationColor: theme_4DividerColor,
  ),
);

//calendar selected text style:

final theme_4CalendarSelectedDayTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_4CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_4CalendarSelectedTextColor,
  ),
);

//next month text style:

final theme2CalendarNextMonthTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_4UnselectedColor,
    fontWeight: FontWeight.w200,
    decorationColor: theme_4UnselectedColor,
  ),
);

final theme2CalendarWeekendTextStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_4UnselectedColor,
    fontWeight: FontWeight.w400,
    decorationColor: theme_4DividerColor,
  ),
);

final theme_4 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_4MainBackgroundColor,
  colorScheme: const ColorScheme(
    primary: theme_4FabIconColor,
    secondary: theme_4CardBackgroundColor,
    primaryFixed: theme_4Accent3Color,
    secondaryFixed: theme_4Accent2Color,
    surface: theme_4CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_4CalendarCellSelectedColor,
    onSecondary: theme_4UnselectedTaskTimerColor,
    onSurface: theme_4CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_4PatternColor,
    brightness: Brightness.light,
    shadow: theme_4CardTimerLastColor,
    outline: theme_4ButtonOutlineColor,
  ),
  canvasColor: theme_4CardBackgroundColor,
  focusColor: theme_4CardTimerFirstColor,
  unselectedWidgetColor: theme_4UnselectedColor,
  primaryColor: theme_4CardTimerFirstColor,
  primaryColorLight: theme_4CardTimerMiddleColor,
  primaryColorDark: theme_4CardTimerLastColor,
  cardColor: theme_4CardBackgroundColor,
  indicatorColor: theme_4Accent1Color,
  shadowColor: theme_4ShadowColor,
  dialogBackgroundColor: theme_4CardTimerLastColor,
  primarySwatch: Colors.blue,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  textTheme: TextTheme(
    /// main big title
    headlineLarge: theme2LargeHeaderTextStyle,

    /// list title & small headers
    headlineMedium: theme2SubtitleHeaderTextStyle,

    ///note & task description text style date header style
    displayLarge: theme2CardTitleTextStyle,

    ///unselected text
    displayMedium: theme2UnselectedTextStyle,
    //content text style
    bodyMedium: theme2ContentTextStyle,

    titleSmall: theme_4CalendarSelectedDayTextStyle,

    ///calendar default text style
    labelLarge: theme2CalendarDayWeekendTextStyle,
    //calendar next month text style:
    labelSmall: theme2CalendarNextMonthTextStyle,

    ///calendar weekend text style:
    labelMedium: theme2CalendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_4Accent1Color,
    selectionColor: theme_4UnselectedColor,
    cursorColor: theme_4Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_4DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,
    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_4Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_4UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.inter(
      textStyle: const TextStyle(
        color: theme_4BaseTextColor,
        fontSize: 18,
        fontWeight: FontWeight.w900,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.inter(
      textStyle: const TextStyle(
        color: theme_4UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w900,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_4Accent1Color, size: 18),
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
              color: theme_4Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_4Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_4BaseTextColor,
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
    shadowColor: theme_4UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4MainBackgroundColor;
      } else {
        return Colors.transparent;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4Accent1Color;
      } else {
        return theme_4UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4MainBackgroundColor;
      } else {
        return theme_4MainBackgroundColor;
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
    backgroundColor: theme_4Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: theme2SubtitleHeaderTextStyle,
    contentTextStyle: theme2ContentTextStyle,
    backgroundColor: theme_4MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerBackgroundColor: theme_4CardTimerFirstColor,
    headerHeadlineStyle: theme2PickersTitleTextStyle,
    headerForegroundColor: theme_4BaseTextColor,
    weekdayStyle: theme2PickersBaseTextStyle,
    dayStyle: theme2PickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_4Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_4BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          textStyle: const TextStyle(
            color: theme_4BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_4CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_4UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          textStyle: const TextStyle(
            color: theme_4BaseTextColor,
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
          side: const BorderSide(color: theme_4UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_4BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4BaseTextColor; // selected element text color
      }
      return theme_4UnselectedColor; // unselected element text color
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4Accent1Color.withValues(alpha: 0.5);
      }
      return theme_4UnselectedColor; // unselected element text color
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4BaseTextColor; // selected element text color
      }
      return theme_4UnselectedColor; // unselected element text color
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_4Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: theme2PickersBaseTextStyle,
    hourMinuteTextStyle: theme2PickersBaseTextStyle,
    dialTextStyle: theme2PickersBaseTextStyle,
    dialHandColor: theme_4Accent1Color, // color handles
    hourMinuteTextColor: theme_4BaseTextColor, // text colors
    backgroundColor: theme_4CardBackgroundColor, // background color
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4BaseTextColor; // selected element text color
      }
      return theme_4UnselectedColor; // unselected element text color
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4BaseTextColor; // selected element text color
      }
      return theme_4UnselectedColor; // unselected element text color
    }),
    entryModeIconColor: theme_4BaseTextColor, // entry mode icon color
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_4Accent1Color.withValues(
          alpha: 0.5,
        ); // selected hour/minute background color
      }
      return theme_4CardBackgroundColor; // unselected hour/minute background color
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_4Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_4BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          textStyle: const TextStyle(
            color: theme_4BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_4CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_4UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          textStyle: const TextStyle(
            color: theme_4BaseTextColor,
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
          side: const BorderSide(color: theme_4UnselectedColor, width: 0.5),
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
      borderSide: BorderSide(width: .5, color: theme_4UnselectedColor),
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_4UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_4CardBackgroundColor),
    helperMaxLines: 1,
    helperStyle: TextStyle(color: theme_4UnselectedColor, fontSize: 8.0),
    labelStyle: TextStyle(color: theme_4UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_4UnselectedColor),
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
      borderSide: BorderSide(width: 2.0, color: theme_4Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_4BaseTextColor,
    unselectedLabelColor: theme_4UnselectedColor,
    unselectedLabelStyle: GoogleFonts.inter(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_4UnselectedColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.inter(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_4BaseTextColor,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_4Accent1Color,
    inactiveTrackColor: theme_4UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
  tooltipTheme: TooltipThemeData(
    textStyle: GoogleFonts.inter(
      textStyle: const TextStyle(color: theme_4BaseTextColor, fontSize: 12),
    ),
    decoration: BoxDecoration(
      color: theme_4CardBackgroundColor,
      borderRadius: BorderRadius.circular(SizeInfo.innerCardCornerRadius),
    ),
  ),
);
