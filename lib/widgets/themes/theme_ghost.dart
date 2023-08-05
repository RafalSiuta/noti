//import 'package:noti_2/widgets/themes/style_exports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const theme_2MainBcgColor = Color(0xFFE6E6E6);
const transparent = Colors.transparent;
//const transparent = Color(0xFFF8F8F8);

// const transparent = Color(0xFF979696);
// const transparent = Color(0xFF7B7B7B);
// const theme_2lastGradientColor = Color(0xFF575757);
// const theme_2noteCardColor = Colors.black;
// const theme_2descriptionColor = Colors.black;
// const theme_2dividerColor = Color(0xFF636363);
// const theme_2unselectedColor = Color(0xFF515151);
// const theme_2shadowColor = Color(0xFFC0C0C0);

final themeGhost = ThemeData(
    useMaterial3: true,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: theme_2MainBcgColor,
   // backgroundColor: transparent,

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: theme_2MainBcgColor,
      onPrimary: transparent,
      secondary: Colors.white,
      onSecondary: transparent,
      error: Colors.transparent,
      onError: transparent,
      background: theme_2MainBcgColor,
      onBackground: transparent,
      surface: theme_2MainBcgColor,
      onSurface: theme_2MainBcgColor,
    ),
    canvasColor: transparent,
    focusColor: transparent,

    unselectedWidgetColor: transparent,
    primaryColor: theme_2MainBcgColor,
    primaryColorLight: theme_2MainBcgColor,
    primaryColorDark: theme_2MainBcgColor,
    cardColor:theme_2MainBcgColor,
    indicatorColor: Colors.amber,
    highlightColor: Colors.transparent,
   // toggleableActiveColor: Colors.white,
    shadowColor: transparent,
    dialogBackgroundColor: transparent,
    primarySwatch: Colors.amber,
    splashColor: Colors.transparent,
    textTheme: TextTheme(
      /// main big title
      // headline1: GoogleFonts.robotoSlab(
      //     textStyle: const TextStyle(
      //   color: Colors.black,
      //   fontSize: 32,
      // )),
      /// main big title //headline 1
      headlineLarge: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 32,
          )),
      /// list title //headline 3 // calendar header/ header secondary date
      headlineMedium: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 18,
            color: transparent,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
            overflow: TextOverflow.ellipsis),
      ),
      //headlineSmall: null,
      /// date header style
      displayLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: transparent,
              fontWeight: FontWeight.w700,
              letterSpacing: 2)),
      //displayMedium: null,
      //task time
      displaySmall: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1)),
      ///calendar weekend text style
      bodyLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
            fontSize: 18,
            color: Colors.amber,
          )),
      //task/note/project description text style:
      bodyMedium:  GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: transparent,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
      ///calendar marker style
      bodySmall: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: transparent,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(theme_2MainBcgColor.withOpacity(0.1))
      )
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(theme_2MainBcgColor.withOpacity(0.1))
      )
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: Colors.transparent,
    ),
    dividerTheme: const DividerThemeData(
      color: transparent,
      thickness: 0.5,
    ),
    navigationRailTheme: NavigationRailThemeData(
      labelType: NavigationRailLabelType.all,
      //useIndicator: true,
      indicatorColor: Colors.transparent,
      groupAlignment: -0.5,
      selectedIconTheme: const IconThemeData(
        color: Colors.amber,

      ),
      unselectedIconTheme: const IconThemeData(color: transparent),
      selectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
            color: transparent,
            fontSize: 18,
              fontWeight: FontWeight.w500
          )),
    ),
    accentIconTheme: const IconThemeData(color: transparent, size: 18),
    iconTheme: const IconThemeData(color: Colors.amber, size: 18),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.amber;
            } else {
              return Colors.white;
            }
          },
        ),
        trackColor: MaterialStateProperty.all(theme_2MainBcgColor)),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
    dialogTheme: DialogTheme(
        elevation: 5.0,
        titleTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: transparent,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: transparent,
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        backgroundColor: theme_2MainBcgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
        width: .5,
        color: transparent,
      )),
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
      isDense: true,
      filled: false,
      hintStyle: TextStyle(color: Colors.black, fontSize: 20),
      contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      suffixStyle: TextStyle(
        color: transparent,
      ),
      labelStyle: TextStyle(
        color: transparent,
      ),
      helperMaxLines: 1,
      helperStyle: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: transparent,//theme_2unselectedColor,
          fontSize: 7.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: transparent,
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      refreshBackgroundColor: transparent,
     // linearTrackColor: Colors.amber


    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent, // theme_4TitleBoxBcgColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
            left: (Radius.circular(15)), right: (Radius.circular(15))),
      ),
    ),

    tabBarTheme: TabBarTheme(
      dividerColor: transparent,

      overlayColor: MaterialStateProperty.all(Colors.transparent),
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: Colors.amber),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: Colors.black,
      unselectedLabelColor: transparent,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: transparent,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.none),
      ),
      labelStyle: GoogleFonts.robotoSlab(
        textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
            overflow: TextOverflow.ellipsis),
      ),
    ),
    sliderTheme: const SliderThemeData(
        activeTrackColor: transparent,
        inactiveTrackColor: transparent,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
