import 'package:flutter/widgets.dart';
import 'package:noti_2/widgets/shapes/shape_paths/shapes_exports.dart';

import '../model/settings_model/settings_model/calendar_settings_model.dart';
import '../model/theme_model/shapes_list.dart';
import '../utils/prefs/prefs.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsProvider() {
    init();
  }

  init() async {
    print('Loading settings..');
  }

  final Prefs _prefs = Prefs();
  // ThemeData themeData = ThemeData();
  // ThemeMode themeMode = ThemeMode.system;

  bool isNotification = true;
  bool isThemeChangeMonthly = false;
  bool isNotificationSound = true;
  bool isShapeTransparent = false;

  CustomClipper<Path> shapes = Shape1();
  ShapesList shapesList = ShapesList();

  int currentShape = 0;

  getShape() {
    return shapes;
  }

  Future<CustomClipper<Path>> loadShape() async {
    // try {
    //   await updateCalendarSettings();
    //   if (isThemeChangeMonthly == true) {
    //     setCustomShape(currentMonthByTheme);
    //   } else {
    //     currentShape = await _prefs
    //         .restoreInt("shape", 0)
    //         .then((shape) => currentShape = setCustomShape(shape));
    //   }
    // } catch (e) {
    //   currentShape = 0;
    // }

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
}