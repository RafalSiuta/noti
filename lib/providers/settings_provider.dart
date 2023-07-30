import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:noti_2/providers/settings_provider/shape_changer.dart';
import 'package:noti_2/providers/settings_provider/theme_changer.dart';
import 'package:noti_2/widgets/shapes/shape_paths/shapes_exports.dart';
import '../model/settings_model/settings_model/calendar_settings_model.dart';
import '../model/theme_model/shapes_list.dart';
import '../model/theme_model/themes_list.dart';
import '../utils/prefs/prefs.dart';
import 'package:noti_2/widgets/themes/theme2.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsProvider(this.themeData) {
    init();
  }

  init() async {
    print('Loading settings..');
    await loadSets();
  }

  final Prefs prefs = Prefs();

  bool isNotification = true;

  bool isNotificationSound = true;

  bool isShapeTransparent = false;

  bool isThemeChangeMonthly = false;

//themes
  ThemeData themeData = ThemeData();

   //ThemeChanger themeChanger = ThemeChanger();

  getTheme(){
    return themeData;
  }

  ThemesList themes = ThemesList();

  int currentMonthByTheme = DateTime.now().month;

  int currentTheme = 0;

  final Prefs _prefs = Prefs();



  setCustomTheme(int theme) async {
    themeData = themes.themesList[theme].themeData!;
    currentTheme = theme;
    await _prefs.storeInt('theme', theme);
    notifyListeners();
  }

  Future<ThemeData> loadTheme() async {
    try {
      // await updateCalendarSettings();

      if (isThemeChangeMonthly == true) {
        setCustomTheme(currentMonthByTheme);
        // setCustomShape(currentMonthByTheme);
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
//

  CustomClipper<Path> shapes = Shape1();
  ShapesList shapesList = ShapesList();

  int currentShape = 0;

  getShape() {
    return shapes;
  }

  Future<CustomClipper<Path>> loadShape() async {
    try {
      // await updateCalendarSettings();
      if (isThemeChangeMonthly == true) {
        setCustomShape(currentShape);
      } else {
        currentShape = await prefs
            .restoreInt("shape", 0)
            .then((shape) => setCustomShape(shape));
      }
    } catch (e) {
      currentShape = 0;
    }

    return shapes;
  }

  setTransparency() {
    if (currentShape == 0 || currentShape == 7) {
      isShapeTransparent = true;
    } else {
      isShapeTransparent = false;
    }
    notifyListeners();
    return isShapeTransparent;
  }

  setCustomShape(int shape) async {
    currentShape = shape;
    shapes = shapesList.shapesList[currentShape];
    setTransparency();
    await prefs.storeInt("shape", currentShape);
    notifyListeners();
  }

  CarouselController carouselController = CarouselController();

  goToPrevious() {
    carouselController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);

    prefs.storeInt('shape', currentShape);
    notifyListeners();
  }

  goToNext() {
    carouselController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.decelerate);
    prefs.storeInt('shape', currentShape);
    notifyListeners();
  }

  onActivityChange(int index) {
    currentShape = index;
    setCustomShape(currentShape);
    notifyListeners();
  }


  CalendarSettings calendarSets = CalendarSettings();

  updateCalendarSettings() async {
    calendarSets.calendarSettings = await prefs
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
    // themeData = await themeChanger.loadTheme();
     shapes = await loadShape();
    // updateNotificationSettings();
    // updateTrashSettings();
  }

}