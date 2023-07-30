import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:noti_2/widgets/shapes/shape_paths/shapes_exports.dart';

import '../model/settings_model/settings_model/calendar_settings_model.dart';
import '../model/theme_model/shapes_list.dart';
import '../model/theme_model/themes_list.dart';
import '../utils/prefs/prefs.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsProvider(this.themeData) {
    init();
  }

  init() async {
    print('Loading settings..');
    await loadSets();
  }

  final Prefs _prefs = Prefs();

  ThemeMode themeMode = ThemeMode.system;

  bool isNotification = true;
  bool isThemeChangeMonthly = false;
  bool isNotificationSound = true;
  bool isShapeTransparent = false;

  int currentMonthByTheme = DateTime.now().month;

  CustomClipper<Path> shapes = Shape1();
  ShapesList shapesList = ShapesList();

  ///shapes logic:
  CarouselController carouselController = CarouselController();

  goToPrevious() {
    carouselController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);

    _prefs.storeInt('shape', currentShape);
    notifyListeners();
  }

  goToNext() {
    carouselController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.decelerate);
    _prefs.storeInt('shape', currentShape);
    notifyListeners();
  }

  onActivityChange(int index) {
    currentShape = index;
    setCustomShape(currentShape);
    setTransparency(currentShape);
    notifyListeners();
  }
//themes
  ThemeData themeData = ThemeData();
  ThemesList themes = ThemesList();

  int currentTheme = 0;

  getTheme() {
    return themeData;
  }

  //get getTheme => themeData;

  setCustomTheme(int theme) async {
    // switch (theme) {
    //   case 0:
    //     themeData = themes.themesList[0].themeData!;
    //     break;
    // //january
    //   case 1:
    //     themeData = themes.themesList[1].themeData!;
    //     break;
    // //febuary
    //   case 2:
    //     themeData = themes.themesList[2].themeData!;
    //     break;
    // //march
    //   case 3:
    //     themeData = themes.themesList[3].themeData!;
    //     break;
    // //april
    //   case 4:
    //     themeData = themes.themesList[4].themeData!;
    //     break;
    // //may
    //   case 5:
    //     themeData = themes.themesList[5].themeData!;
    //     break;
    // //june
    //   case 6:
    //     themeData = themes.themesList[6].themeData!;
    //     break;
    // //july
    //   case 7:
    //     themeData = themes.themesList[7].themeData!;
    //     break;
    // //august
    //   case 8:
    //     themeData = themes.themesList[8].themeData!;
    //     break;
    // //september
    //   case 9:
    //     themeData = themes.themesList[9].themeData!;
    //     break;
    // //october
    //   case 10:
    //     themeData = themes.themesList[10].themeData!;
    //     break;
    // //november
    //   case 11:
    //     themeData = themes.themesList[11].themeData!;
    //     break;
    // //december
    //   case 12:
    //     themeData = themes.themesList[12].themeData!;
    //     break;
    //   default:
    //     themeData = themes.themesList[3].themeData!;
    // }
    themeData = themes.themesList[theme].themeData!;
    currentTheme = theme;
    await _prefs.storeInt('theme', theme);
    notifyListeners();
  }

  Future<ThemeData> loadTheme() async {
    try {
      await updateCalendarSettings();

      if (isThemeChangeMonthly == true) {
        setCustomTheme(currentMonthByTheme);
        setCustomShape(currentMonthByTheme);
      } else {
        currentTheme = await _prefs
            .restoreInt('theme', currentTheme)
            .then((theme) => currentTheme = setCustomTheme(theme));
      }
    } catch (e) {
      currentTheme = 0;
    }

    return themeData;
  }

  int currentShape = 0;

  getShape() {
    return shapes;
  }

  Future<CustomClipper<Path>> loadShape() async {
    try {
      await updateCalendarSettings();
      if (isThemeChangeMonthly == true) {
        setCustomShape(currentMonthByTheme);
      } else {
        currentShape = await _prefs
            .restoreInt("shape", 0)
            .then((shape) => currentShape = setCustomShape(shape));
      }
    } catch (e) {
      currentShape = 0;
    }

    return shapes;
  }

  setTransparency(int shape) {
    if (shape == 0 || shape == 7) {
      isShapeTransparent = true;
    } else {
      isShapeTransparent = false;
    }
    notifyListeners();
    return isShapeTransparent;
  }

  setCustomShape(int shape) async {
    switch (shape) {
      case 0:
        shapes = shapesList.shapesList[0];
        break;
      case 1:
        shapes = shapesList.shapesList[1];
        break;
      case 2:
        shapes = shapesList.shapesList[2];
        break;
      case 3:
        shapes = shapesList.shapesList[3];
        break;
      case 4:
        shapes = shapesList.shapesList[4];
        break;
      case 5:
        shapes = shapesList.shapesList[5];
        break;
      case 6:
        shapes = shapesList.shapesList[6];
        break;
      case 7:
        shapes = shapesList.shapesList[7];
        break;
      case 8:
        shapes = shapesList.shapesList[8];
        break;
      case 9:
        shapes = shapesList.shapesList[9];
        break;
      case 10:
        shapes = shapesList.shapesList[10];
        break;
      case 11:
        shapes = shapesList.shapesList[11];
        break;
      case 12:
        shapes = shapesList.shapesList[12];
        break;
    }
    currentShape = shape;
    setTransparency(currentShape);
    await _prefs.storeInt("shape", shape);
    notifyListeners();
  }

  CalendarSettings calendarSets = CalendarSettings();

  updateCalendarSettings() async {
    calendarSets.calendarSettings = await _prefs
        .restoreList('calendarSettings', calendarSets.calendarSettings)
        .then((value) {
      isThemeChangeMonthly = value[1].isOn!;
      return value;
    });
  }

  //loader in init function
  loadSets() async {
    updateCalendarSettings();
    themeData = await loadTheme();
    shapes = await loadShape();
    // updateNotificationSettings();
    // updateTrashSettings();
  }
}