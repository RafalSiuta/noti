import 'package:flutter/material.dart';
import 'package:noti_2/providers/settings_provider.dart';
import '../../model/theme_model/themes_list.dart';
import '../../utils/prefs/prefs.dart';

// class ThemeChanger extends SettingsProvider{
//
//   ThemeChanger(themeData) : super(themeData);


  // ThemeData themeData = ThemeData();
  //
  // ThemesList themes = ThemesList();
  //
  // int currentMonthByTheme = DateTime.now().month;
  //
  // int currentTheme = 0;
  //
  // bool isThemeChangeMonthly = false;
  //
  // final Prefs _prefs = Prefs();
  //
  //
  //
  // setCustomTheme(int theme) async {
  //   themeData = themes.themesList[theme].themeData!;
  //   currentTheme = theme;
  //   await _prefs.storeInt('theme', theme);
  //   notifyListeners();
  // }
  //
  // Future<ThemeData> loadTheme() async {
  //   try {
  //    // await updateCalendarSettings();
  //
  //     if (isThemeChangeMonthly == true) {
  //       setCustomTheme(currentMonthByTheme);
  //      // setCustomShape(currentMonthByTheme);
  //     } else {
  //       currentTheme = await _prefs
  //           .restoreInt('theme', currentTheme)
  //           .then((theme) => currentTheme = setCustomTheme(theme));
  //     }
  //   } catch (e) {
  //     currentTheme = 0;
  //   }
  //
  //   return themeData;
  // }
// }