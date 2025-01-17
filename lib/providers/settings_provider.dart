import 'package:audioplayers/audioplayers.dart';
import 'package:noti/providers/permission_provider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/menu_model/nav_model.dart';
import '../models/settings_model/policy/policy_rules_list.dart';
import '../models/settings_model/settings_model/calendar_settings_model.dart';
import '../models/settings_model/settings_model/notification_settings_model.dart';
import '../models/settings_model/settings_model/settings_model.dart';
import '../models/settings_model/social_items.dart';
import '../models/settings_model/trash_settings_model/trash_model.dart';
import '../models/settings_model/trash_settings_model/trash_settings_list.dart';
import '../models/theme_model/shapes_list.dart';
import '../models/theme_model/themes_list.dart';
import '../styles/shapes/shape_paths/shape1.dart';
import '../utils/notifications/notifications_helper.dart';
import '../utils/prefs/prefs.dart';

class SettingsProvider extends ChangeNotifier {

  PermissionProvider permissionProvider;

  SettingsProvider(this.permissionProvider) {
    init();
  }

  init() async {
    await loadSets();
  }

  List<NavModel> optionTitles = [
    NavModel(
      title: 'Themes',
    ),
    NavModel(
      title: 'Settings',
    ),
    NavModel(
      title: 'About',
    )
  ];

  bool isNotification = false;
  bool isSoundOn = false;
  bool isThemeChangeMonthly = false;
  bool isNotificationSound = true;
  bool isShapeTransparent = false;

  int currentMonthByTheme = DateTime.now().month;

  StartingDayOfWeek? calendarStartDay;

  ///themes
  final Prefs _prefs = Prefs();
  ThemeData themeData = ThemeData();
  ThemeMode themeMode = ThemeMode.system;



  ThemesList themes = ThemesList();

  int currentTheme = 0;

  getTheme() {
    return themeData;
  }

  getShape() {
    return shapes;
  }

  Future<ThemeData> loadTheme() async {
    try {
      await updateCalendarSettings();

      if (isThemeChangeMonthly == true) {
        setCustomTheme(currentMonthByTheme);
        setCustomShape(currentMonthByTheme);
      } else {
        currentTheme =
        await _prefs
            .restoreInt('theme', currentTheme)
            .then((theme)=> currentTheme = setCustomTheme(theme));
      }
    } catch (e) {
      currentTheme = 0;
    }

    return themeData;
  }

  void loadCurrentShape() async {
    await _prefs
        .restoreInt("shape", 0)
        .then((shape) => setCustomShape(shape)
     );
    notifyListeners();
  }

  Future<CustomClipper<Path>> loadShape() async {
    try {
      await updateCalendarSettings();
      if (isThemeChangeMonthly == true) {
        setCustomShape(currentMonthByTheme);
      } else {
        loadCurrentShape();
      }
    } catch (e) {
      currentShape = 0;
    }

    return shapes;
  }

  setTransparency(int shape) {
    if (shape == 0 || shape == 5) {
      isShapeTransparent = true;
    } else {
      isShapeTransparent = false;
    }
    notifyListeners();
    return isShapeTransparent;
  }

  setCustomTheme(int theme) async {
   print("CURRENT THEME IS: $theme");
    if(theme >= 0 && theme <= 12){
      theme = themes.themesList.first.id;
    }
    for (var item in themes.themesList) {
      if(item.id == theme){
        themeData = item.themeData!;
        currentTheme = theme;
      }
    }
    await _prefs.storeInt('theme', theme);
    notifyListeners();
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

  ///shapes logic:
  final CarouselSliderController carouselController = CarouselSliderController();

  ShapesList shapesList = ShapesList();

  int currentShape = 0;

  CustomClipper<Path> shapes = Shape1();


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

  CalendarSettings calendarSets = CalendarSettings();

  onCalendarSettingsChange(SettingsModel sets) async {
    sets.onChange();
    await _prefs.storeList('calendarSettings', calendarSets.calendarSettings);
    calendarStartingDay();
    isThemeChangeMonthly = calendarSets.calendarSettings[1].isOn!;
    notifyListeners();
  }

  StartingDayOfWeek? calendarStartingDay(){

    if(calendarSets.calendarSettings[0].isOn == null || calendarSets.calendarSettings[0].isOn == false){
      calendarStartDay = StartingDayOfWeek.monday;
    }else{
      calendarStartDay = StartingDayOfWeek.sunday;
    }
    return calendarStartDay;
  }

  updateCalendarSettings() async {

    calendarSets.calendarSettings = await _prefs
        .restoreList('calendarSettings', calendarSets.calendarSettings)
        .then((value) {
      isThemeChangeMonthly = value[1].isOn!;
      calendarStartingDay();
      return value;
    });
  }

  NotificationSettings notificationSets = NotificationSettings();

  onNotificationSettingsChange(SettingsModel sets) async{
    sets.onChange();
    _prefs.storeList(
        'notificationSettings', notificationSets.notificationSettings);

    if (sets.isOn == true) {
      isNotification = true;

      await NotificationsHelper().requestNotificationPermissions();
    } else {
      isNotification = false;

      NotificationsHelper().cancelAllNotifications();

    }
    print("NOTIFICATIONS SETTINGS VALUE: 0");
    notifyListeners();
  }

  onNotificationSound(SettingsModel sets){
    sets.onChange();
    _prefs.storeList(
        'notificationSettings', notificationSets.notificationSettings);

    if(sets.isOn == true){
      NotificationsHelper().requestNotificationSound(sets.isOn!);
      playSound();
    }
    notifyListeners();
  }

  Future<void> playSound() async {
    try {

      final player = AudioPlayer();
      await player.play(AssetSource('sounds/sound.wav'));
    } catch (e) {

    }
  }

  updateNotificationSettings() async {
    notificationSets.notificationSettings = await _prefs
        .restoreList(
            'notificationSettings', notificationSets.notificationSettings)
        .then((value) {
      isNotification = value[0].isOn!;
      isSoundOn = value[1].isOn!;
      return value;
    });
  }


  TrashSettings trashSets = TrashSettings();

  onTrashSettingsChange(TrashModel sets) {
    sets.onChange();
    _prefs.storeList('trashSettings', trashSets.trashSettings);
    notifyListeners();
  }

  updateTrashSettings() async {
    trashSets.trashSettings = await _prefs
        .restoreTrashList('trashSettings', trashSets.trashSettings)
        .then((value) {
      if (value[0].isOn == true) {}
      if (value[1].isOn == true) {}
      return value;
    });
  }

  cancelDeleteSettings(int index) {
    if (trashSets.trashSettings[index].isOn == true) {
      trashSets.trashSettings[index].onChange();
      _prefs.storeList('trashSettings', trashSets.trashSettings);
    }
    notifyListeners();
  }

  onSliderChange(double newValue, int index) {
    trashSets.trashSettings[index].sliderValue = newValue.floorToDouble();
    _prefs.storeList('trashSettings', trashSets.trashSettings);
    notifyListeners();
  }

  PolicyList policyList = PolicyList();

  loadSets() async {


    updateCalendarSettings();
    themeData = await loadTheme();
    shapes = await loadShape();
    updateNotificationSettings();
    updateTrashSettings();
    loadCurrentShape();
  }

  //social links
  SocialList socialList = SocialList();
}
