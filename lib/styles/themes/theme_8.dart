import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/dimensions/size_info.dart';

const theme_8MainBackgroundColor = Color(0xFFEAE7E1); //main-background
const theme_8PatternColor = Color(0xFFD5CFC3); //pattern
const theme_8CardBackgroundColor = Color(0xFFF7F5F3); //card-background
const theme_8TimerTextColor = Color(0xFF2E260F); //timer-text
const theme_8CardTimerFirstColor = Color(0xFF9C8A6D); //card-timer-first
const theme_8CardTimerMiddleColor = Color(0xFFA8997F); //card-timer-middle
const theme_8CardTimerLastColor = Color(0xFFB5A792); //card-timer-last
const theme_8UnselectedTaskTimerColor = Color(
  0xFF807057,
); //unselected-task-timer
const theme_8ButtonOutlineColor = Color(0xFF675C46); //button-outline
const theme_8BaseTextColor = Color(0xFF2E260F); //base-text
const theme_8Accent1Color = Color(0xFFDBB136); //accent-1
const theme_8Accent2Color = Color(0xFFE09052); //accent-2
const theme_8Accent3Color = Color(0xFFCD664C); //accent-3
const theme_8ErrorColor = Color(0xFFFF5252); //error
const theme_8UnselectedColor = Color(0xFFC0B7A5); //unselected
const theme_8DividerColor = Color(0xFFC0B7A5); //divider
const theme_8ShadowColor = Color(0xCCAB9F87); //shadow
const theme_8FabIconColor = Color(0xFF2E260F); //fab-icon
const theme_8CalendarCellSelectedColor = Color(
  0xFFBBA685,
); //calendar-cell-selected
const theme_8CalendarSelectedTextColor = Color(
  0xFF2E260F,
); //calendar-selected-text
const theme_8CalendarBaseTextColor = Color(0xFF2E260F); //calendar-base-text
const theme_8CalendarWeekendTextColor = Color(
  0xFFDBB136,
); //calendar-weekend-text
const theme_8CalendarNextMonthColor = Color(0xFF9C8A6D); //calendar-next-month

const theme_8PickerTextColor = Color(0xFF2E260F); //picker-text

final theme5PickersBaseTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: theme_8PickerTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w300,
  ),
);

final theme5PickersTitleTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: theme_8BaseTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  ),
);
//TEXT STYLES:
//headers:
//Large header:

final TextStyle theme5LargeHeaderTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: theme_8BaseTextColor,
    fontSize: 32,
    fontWeight: FontWeight.w300,
  ),
);
//Subtitle header:

final TextStyle theme5SubtitleHeaderTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 18,
    color: theme_8BaseTextColor,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  ),
);
//task & note card style:
//title text style:

final TextStyle theme5CardTitleTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_8BaseTextColor,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  ),
);
//content text:

final TextStyle theme5ContentTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_8BaseTextColor,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  ),
);
//unselected text (is done):

final TextStyle theme5UnselectedTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_8UnselectedColor,
    fontWeight: FontWeight.w200,
    decorationColor: theme_8DividerColor,
    decoration: TextDecoration.lineThrough,
  ),
);
//calendar text style:
//day text style:

final theme5CalendarDayWeekendTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_8Accent1Color,
    fontWeight: FontWeight.w200,
    decorationColor: theme_8DividerColor,
  ),
);

//calendar selected text style:

final theme_8CalendarSelectedDayTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_8CalendarSelectedTextColor,
    fontWeight: FontWeight.w600,
    decorationColor: theme_8CalendarSelectedTextColor,
  ),
);

//next month text style:

final theme5CalendarNextMonthTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_8ButtonOutlineColor,
    fontWeight: FontWeight.w200,
    decorationColor: theme_8UnselectedColor,
  ),
);

final theme5CalendarWeekendTextStyle = GoogleFonts.poppins(
  textStyle: const TextStyle(
    fontSize: 12,
    color: theme_8Accent1Color,
    fontWeight: FontWeight.w400,
    decorationColor: theme_8DividerColor,
  ),
);

final theme_8 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: theme_8MainBackgroundColor,
  colorScheme: const ColorScheme(
    primary: theme_8FabIconColor,
    secondary: theme_8CardBackgroundColor,
    primaryFixed: theme_8Accent3Color,
    secondaryFixed: theme_8Accent2Color,
    surface: theme_8CardBackgroundColor,
    error: Colors.redAccent,
    onPrimary: theme_8CalendarCellSelectedColor,
    onSecondary: theme_8UnselectedTaskTimerColor,
    onSurface: theme_8CardBackgroundColor,
    onError: Colors.white,
    tertiary: theme_8PatternColor,
    brightness: Brightness.light,
    shadow: theme_8CardTimerLastColor,
    outline: theme_8ButtonOutlineColor,
  ),
  canvasColor: theme_8CardBackgroundColor,
  focusColor: theme_8CardTimerFirstColor,
  unselectedWidgetColor: theme_8UnselectedColor,
  primaryColor: theme_8CardTimerFirstColor,
  primaryColorLight: theme_8CardTimerMiddleColor,
  primaryColorDark: theme_8CardTimerLastColor,
  cardColor: theme_8CardBackgroundColor,
  indicatorColor: theme_8Accent1Color,
  shadowColor: theme_8ShadowColor,
  dialogBackgroundColor: theme_8CardTimerLastColor,
  primarySwatch: Colors.blue,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  textTheme: TextTheme(
    /// main big title
    headlineLarge: theme5LargeHeaderTextStyle,

    /// list title & small headers
    headlineMedium: theme5SubtitleHeaderTextStyle,

    ///note & task description text style date header style
    displayLarge: theme5CardTitleTextStyle,

    ///unselected text
    displayMedium: theme5UnselectedTextStyle,
    //content text style
    bodyMedium: theme5ContentTextStyle,

    titleSmall: theme_8CalendarSelectedDayTextStyle,

    ///calendar default text style
    labelLarge: theme5CalendarDayWeekendTextStyle,
    //calendar next month text style:
    labelSmall: theme5CalendarNextMonthTextStyle,

    ///calendar weekend text style:
    labelMedium: theme5CalendarWeekendTextStyle,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionHandleColor: theme_8Accent1Color,
    selectionColor: theme_8UnselectedColor,
    cursorColor: theme_8Accent1Color,
  ),
  dividerTheme: const DividerThemeData(
    color: theme_8DividerColor,
    thickness: 0.5,
  ),
  navigationRailTheme: NavigationRailThemeData(
    labelType: NavigationRailLabelType.all,
    groupAlignment: -0.5,
    useIndicator: true,
    indicatorColor: Colors.transparent,
    selectedIconTheme: const IconThemeData(
      color: theme_8Accent1Color,
      fill: 0.0,
    ),
    unselectedIconTheme: const IconThemeData(
      color: theme_8UnselectedColor,
      fill: 0.0,
    ),
    selectedLabelTextStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: theme_8Accent1Color,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        backgroundColor: Colors.transparent,
      ),
    ),
    unselectedLabelTextStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(
        color: theme_8UnselectedColor,
        fontSize: 17,
        fontWeight: FontWeight.w200,
      ),
    ),
  ),
  iconTheme: const IconThemeData(color: theme_8Accent1Color, size: 18),
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
              color: theme_8Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else if (states.contains(WidgetState.focused)) {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_8Accent1Color,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          );
        } else {
          return GoogleFonts.exo2(
            textStyle: const TextStyle(
              fontSize: 12,
              color: theme_8BaseTextColor,
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
    shadowColor: theme_8UnselectedColor,
    elevation: 5,
  ),
  switchTheme: SwitchThemeData(
    trackOutlineWidth: WidgetStateProperty.all(0.5),
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8MainBackgroundColor;
      } else {
        return Colors.transparent;
      }
    }),
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8Accent1Color;
      } else {
        return theme_8UnselectedColor;
      }
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8MainBackgroundColor;
      } else {
        return theme_8MainBackgroundColor;
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
    backgroundColor: theme_8Accent1Color,
  ),
  dialogTheme: DialogThemeData(
    elevation: 5.0,
    titleTextStyle: theme5SubtitleHeaderTextStyle,
    contentTextStyle: theme5ContentTextStyle,
    backgroundColor: theme_8MainBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerBackgroundColor: theme_8CardTimerFirstColor,
    headerHeadlineStyle: theme5PickersTitleTextStyle,
    headerForegroundColor: theme_8BaseTextColor,
    weekdayStyle: theme5PickersBaseTextStyle,
    dayStyle: theme5PickersBaseTextStyle,
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_8Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_8BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: theme_8BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_8CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_8UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: theme_8BaseTextColor,
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
          side: const BorderSide(color: theme_8UnselectedColor, width: 0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
    ),
    todayBorder: const BorderSide(
      color: theme_8BaseTextColor,
      style: BorderStyle.solid,
      width: 0.5,
    ),
    todayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8BaseTextColor; // selected element text color
      }
      return theme_8UnselectedColor; // unselected element text color
    }),
    todayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayOverlayColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8Accent1Color.withValues(alpha: 0.5);
      }
      return theme_8UnselectedColor; // unselected element text color
    }),
    dayBackgroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8Accent1Color.withValues(alpha: 0.5);
      }
      return Colors.transparent; // unselected element text color
    }),
    dayForegroundColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8BaseTextColor; // selected element text color
      }
      return theme_8UnselectedColor; // unselected element text color
    }),
  ),
  timePickerTheme: TimePickerThemeData(
    elevation: 0.2,
    dayPeriodColor: theme_8Accent1Color.withValues(alpha: 0.5),
    dayPeriodTextStyle: theme5PickersBaseTextStyle,
    hourMinuteTextStyle: theme5PickersBaseTextStyle,
    dialTextStyle: theme5PickersBaseTextStyle,
    dialHandColor: theme_8Accent1Color, // color handles
    hourMinuteTextColor: theme_8BaseTextColor, // text colors
    backgroundColor: theme_8CardBackgroundColor, // background color
    dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8BaseTextColor; // selected element text color
      }
      return theme_8UnselectedColor; // unselected element text color
    }),
    dialTextColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8BaseTextColor; // selected element text color
      }
      return theme_8UnselectedColor; // unselected element text color
    }),
    entryModeIconColor: theme_8BaseTextColor, // entry mode icon color
    hourMinuteColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return theme_8Accent1Color.withValues(
          alpha: 0.5,
        ); // selected hour/minute background color
      }
      return theme_8CardBackgroundColor; // unselected hour/minute background color
    }),
    confirmButtonStyle: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(
        theme_8Accent1Color.withValues(alpha: 0.5),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(SizeInfo.innerCardCornerRadius),
          ),
        ),
      ),
      foregroundColor: WidgetStateProperty.all(theme_8BaseTextColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: theme_8BaseTextColor,
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
      backgroundColor: WidgetStateProperty.all(theme_8CardBackgroundColor),
      foregroundColor: WidgetStateProperty.all(theme_8UnselectedColor),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: theme_8BaseTextColor,
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
          side: const BorderSide(color: theme_8UnselectedColor, width: 0.5),
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
      borderSide: BorderSide(width: .5, color: theme_8UnselectedColor),
    ),
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    focusedErrorBorder: InputBorder.none,
    isDense: true,
    filled: false,
    hintStyle: TextStyle(color: theme_8UnselectedColor, fontSize: 20),
    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
    suffixStyle: TextStyle(color: theme_8CardBackgroundColor),
    helperMaxLines: 1,
    helperStyle: TextStyle(color: theme_8UnselectedColor, fontSize: 8.0),
    labelStyle: TextStyle(color: theme_8UnselectedColor, fontSize: 20),
    alignLabelWithHint: true,
    prefixStyle: TextStyle(color: theme_8UnselectedColor),
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
      borderSide: BorderSide(width: 2.0, color: theme_8Accent1Color),
      insets: EdgeInsets.symmetric(horizontal: 16.0),
    ),
    labelColor: theme_8BaseTextColor,
    unselectedLabelColor: theme_8UnselectedColor,
    unselectedLabelStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_8UnselectedColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
    labelStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(
        fontSize: 12,
        color: theme_8BaseTextColor,
        fontWeight: FontWeight.w200,
        decoration: TextDecoration.none,
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    trackHeight: 1.5,
    activeTrackColor: theme_8Accent1Color,
    inactiveTrackColor: theme_8UnselectedColor,
    trackShape: RoundedRectSliderTrackShape(),
    thumbColor: Colors.white,
  ),
  tooltipTheme: TooltipThemeData(
    textStyle: GoogleFonts.poppins(
      textStyle: const TextStyle(color: theme_8BaseTextColor, fontSize: 12),
    ),
    decoration: BoxDecoration(
      color: theme_8CardBackgroundColor,
      borderRadius: BorderRadius.circular(SizeInfo.innerCardCornerRadius),
    ),
  ),
);
