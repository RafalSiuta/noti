import 'package:noti_2/widgets/themes/style_exports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noti_2/widgets/themes/theme12.dart';

const theme_2MainBcgColor = Color(0xFFE6E6E6);
const theme_2TitleBoxBcgColor = Color(0xFFF8F8F8);
const theme_2firstGradientColor = Color(0xFF979696);
const theme_2middleGradientColor = Color(0xFF7B7B7B);
const theme_2lastGradientColor = Color(0xFF575757);
const theme_2noteCardColor = Colors.black;
const theme_2descriptionColor = Colors.black;
const theme_2dividerColor = Color(0xFF636363);
const theme_2unselectedColor = Color(0xFF515151);
const theme_2shadowColor = Color(0xFFC0C0C0);

final theme2 = ThemeData(
    useMaterial3: true,
    splashFactory: NoSplash.splashFactory,
    scaffoldBackgroundColor: theme_2MainBcgColor,
   // backgroundColor: theme_2TitleBoxBcgColor,

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: theme_2firstGradientColor,
      onPrimary: theme_2firstGradientColor,
      secondary: Colors.white,
      onSecondary: theme_2lastGradientColor,
      error: Color(0xFFF32424),
      onError: Color(0xFFF32424),
      background: theme_2TitleBoxBcgColor,
      onBackground: theme_2TitleBoxBcgColor,
      surface: theme_2MainBcgColor,
      onSurface: theme_2MainBcgColor,
    ),
    canvasColor: theme_2TitleBoxBcgColor,
    focusColor: theme_2middleGradientColor,

    unselectedWidgetColor: theme_2unselectedColor,
    primaryColor: theme_2firstGradientColor,
    primaryColorLight: theme_2middleGradientColor,
    primaryColorDark: theme_2lastGradientColor,
    cardColor: theme_2middleGradientColor,
    indicatorColor: Colors.amber,
    highlightColor: Colors.transparent,
   // toggleableActiveColor: Colors.white,
    shadowColor: theme_2shadowColor,
    dialogBackgroundColor: theme_2lastGradientColor,
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
            color: theme_2noteCardColor,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
            overflow: TextOverflow.ellipsis),
      ),
      //headlineSmall: null,
      /// date header style
      displayLarge: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 18,
              color: theme_2lastGradientColor,
              fontWeight: FontWeight.w700,
              letterSpacing: 2)),
      //displayMedium: null,
      //displayMedium: null,
      displayMedium: GoogleFonts.roboto(
          textStyle: const TextStyle(
            fontSize: 10,
            color: Colors.black,
            fontWeight: FontWeight.w400,)),
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
              color: theme_2lastGradientColor,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.ellipsis)),
      ///calendar marker style
      bodySmall: GoogleFonts.roboto(
          textStyle: const TextStyle(
              fontSize: 10,
              color: theme_2noteCardColor,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis)),
      //card icon hour display
      // labelSmall: GoogleFonts.roboto(
      //     textStyle: const TextStyle(
      //       fontSize: 10,
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold
      //     )),


      /// list title
      // headline2: GoogleFonts.robotoSlab(
      //   textStyle: const TextStyle(
      //       fontSize: 18,
      //       color: theme_2noteCardColor,
      //       fontWeight: FontWeight.w500,
      //       decoration: TextDecoration.none),
      // ),
      //
      // /// date header style
      // headline3: GoogleFonts.roboto(
      //     textStyle: const TextStyle(
      //         fontSize: 18,
      //         color: theme_2lastGradientColor,
      //         fontWeight: FontWeight.w700,
      //         letterSpacing: 2)),

      ///calendar weekend text style
      // subtitle1: GoogleFonts.roboto(
      //     textStyle: const TextStyle(
      //   fontSize: 18,
      //   color: Colors.amber,
      // )),

      ///calendar marker style
      // subtitle2: GoogleFonts.roboto(
      //     textStyle: const TextStyle(
      //         fontSize: 10,
      //         color: theme_2noteCardColor,
      //         fontWeight: FontWeight.bold,
      //         overflow: TextOverflow.ellipsis)),

      ///task description text style
      // bodyText1: GoogleFonts.roboto(
      //     textStyle: const TextStyle(
      //         fontSize: 10,
      //         color: theme_2lastGradientColor,
      //         fontWeight: FontWeight.w300,
      //         overflow: TextOverflow.ellipsis)),

      // ///note title style
      // headline4: GoogleFonts.robotoSlab(
      //     textStyle: const TextStyle(
      //         fontSize: 18,
      //         color: theme_2descriptionColor,
      //         fontWeight: FontWeight.w500,
      //         letterSpacing: 0,
      //         overflow: TextOverflow.ellipsis)),
      //
      // ///note description text style
      // bodyText2: GoogleFonts.roboto(
      //     textStyle: const TextStyle(
      //         fontSize: 10,
      //         color: theme_2descriptionColor,
      //         fontWeight: FontWeight.w400,
      //         overflow: TextOverflow.ellipsis)),
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
      color: theme_2dividerColor,
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
      unselectedIconTheme: const IconThemeData(color: theme_2unselectedColor),
      selectedLabelTextStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      unselectedLabelTextStyle: GoogleFonts.robotoSlab(
          textStyle: const TextStyle(
            color: theme_2unselectedColor,
            fontSize: 18,
              fontWeight: FontWeight.w500
          )),
    ),
    accentIconTheme: const IconThemeData(color: theme_2noteCardColor, size: 18),
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
              color: theme_2noteCardColor,
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        contentTextStyle: GoogleFonts.roboto(
          textStyle: const TextStyle(
              color: theme_2noteCardColor,
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
        color: theme_2dividerColor,
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
        color: theme_2unselectedColor,
      ),
      labelStyle: TextStyle(
        color: theme_2noteCardColor,
      ),
      helperMaxLines: 1,
      helperStyle: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: theme_2firstGradientColor,//theme_2unselectedColor,
          fontSize: 7.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      alignLabelWithHint: true,
      prefixStyle: TextStyle(
        color: theme_2noteCardColor,
      ),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      refreshBackgroundColor: theme_2unselectedColor,
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
      dividerColor: theme_2unselectedColor,

      overlayColor: MaterialStateProperty.all(Colors.transparent),
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: Colors.amber),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      labelColor: Colors.black,
      unselectedLabelColor: theme_2unselectedColor,
      unselectedLabelStyle: GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 12,
            color: theme_2unselectedColor,
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
        activeTrackColor: theme_12indicatorColor,
        inactiveTrackColor: theme_2unselectedColor,
        trackShape: RoundedRectSliderTrackShape(),
        thumbColor: Colors.white));
