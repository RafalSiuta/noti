import 'dart:math' as math;
import 'package:audioplayers/audioplayers.dart';
import 'package:noti/providers/permission_provider/permission_provider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:noti/providers/settings_provider/policy/policy_rules_list.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../models/settings_model/settings_model/calendar_settings_model.dart';
import '../../models/settings_model/settings_model/notification_settings_model.dart';
import '../../models/settings_model/settings_model/settings_model.dart';
import '../../models/settings_model/social_items.dart';
import '../../models/settings_model/trash_settings_model/trash_model.dart';
import '../task_provider/task_provider.dart';
import 'trash_settings_list.dart';
import '../../models/theme_model/shapes_list.dart';
import '../../models/theme_model/themes_list.dart';
import '../../styles/shapes/shape_paths/shape1.dart';
import '../../utils/notifications/notifications_helper.dart';
import '../../utils/prefs/prefs.dart';
import '../../utils/constants/sets_keys.dart';

class SettingsProvider extends ChangeNotifier {

  PermissionProvider permissionProvider;
  TaskProvider? _taskProvider;

  void bindTaskProvider(TaskProvider tp) {
    _taskProvider = tp;
  }

  SettingsProvider(this.permissionProvider) {
    init();
  }

  void updatePermission(PermissionProvider sp) {

    permissionProvider = sp;

  }

  void init() async {

    await loadSets();
  }

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

  ThemeData getTheme() {
    return themeData;
  }

  CustomClipper<Path> getShape() {
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
            .restoreInt(THEME_PREFS_KEY, currentTheme)
            .then((theme)=> currentTheme = setCustomTheme(theme));
      }
    } catch (e) {
      currentTheme = 0;
    }

    return themeData;
  }

  void loadCurrentShape() async {
    await _prefs
        .restoreInt(SHAPE_PREFS_KEY, 0)
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

    int safeIndex(int i, int length) {
    if (length <= 0) return 0;
    if (i < 0) return 0;
    if (i >= length) return length - 1;
    return i;
  }

  bool setTransparency(int shape) {
    if (shape == 0 || shape == 5) {
      isShapeTransparent = true;
    } else {
      isShapeTransparent = false;
    }
    notifyListeners();
    return isShapeTransparent;
  }

   setCustomTheme(int theme) async {
    if(theme >= 0 && theme <= 12){
      theme = themes.themesList.first.id;
    }
    for (var item in themes.themesList) {
      if(item.id == theme){
        themeData = item.themeData!;
        currentTheme = theme;
      }
    }
    await _prefs.storeInt(THEME_PREFS_KEY, theme);
    notifyListeners();
    return theme;
  }

  void setCustomShape(int shape) async {
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
    currentShape = safeIndex(shape, shapesList.shapesList.length);
    setTransparency(currentShape);
    await _prefs.storeInt(SHAPE_PREFS_KEY, shape);
    notifyListeners();
  }

  ///shapes logic:
  final CarouselSliderController carouselController = CarouselSliderController();

  ShapesList shapesList = ShapesList();

  int currentShape = 0;

  CustomClipper<Path> shapes = Shape1();


  void goToPrevious() {
    carouselController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);

    _prefs.storeInt(SHAPE_PREFS_KEY, currentShape);
    notifyListeners();
  }

  void goToNext() {
    carouselController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.decelerate);
    _prefs.storeInt(SHAPE_PREFS_KEY, currentShape);
    notifyListeners();
  }

  void onActivityChange(int index) {
    currentShape = index;
    setCustomShape(currentShape);
    setTransparency(currentShape);
    notifyListeners();
  }

  CalendarSettings calendarSets = CalendarSettings();

  void onCalendarSettingsChange(SettingsModel sets) async {
    sets.onChange();
    await _prefs.storeStatesLite(CALENDAR_PREFS_KEY, calendarSets.calendarSettings);
    calendarStartingDay();
    isThemeChangeMonthly = calendarSets.calendarSettings[1].isOn ?? false;

    notifyListeners();
  }

  Future<void> updateCalendarSettings() async {
    final states = await _prefs.restoreStatesLite(
      CALENDAR_PREFS_KEY,
      calendarSets.calendarSettings,
    );
    final len = math.min(states.length, calendarSets.calendarSettings.length);
    for (int i = 0; i < len; i++) {
      calendarSets.calendarSettings[i].isOn = states[i];
    }
    isThemeChangeMonthly = calendarSets.calendarSettings[1].isOn ?? false;
    calendarStartingDay();
    notifyListeners();
  }

  StartingDayOfWeek? calendarStartingDay(){

    if(calendarSets.calendarSettings[0].isOn == null || calendarSets.calendarSettings[0].isOn == false){
      calendarStartDay = StartingDayOfWeek.monday;
    }else{
      calendarStartDay = StartingDayOfWeek.sunday;
    }
    notifyListeners();
    return calendarStartDay;
  }

  NotificationSettings notificationSets = NotificationSettings();

  void onNotificationSettingsChange(SettingsModel sets) async {
    sets.onChange();
    await _prefs.storeStatesLite(NOTIFICATION_PREFS_KEY, notificationSets.notificationSettings);

    if (sets.isOn == true) {
      isNotification = true;
      final ok = await NotificationsHelper().ensureNotificationCapabilities();
      if (ok) {
        await _taskProvider?.resyncAllNotifications();
      } else {
        // pokaż snackbar/toast z instrukcją
      }
    } else {
      isNotification = false;
      await NotificationsHelper().cancelAllNotifications();
    }
    notifyListeners();
  }

  void onNotificationSound(SettingsModel sets) async {
    sets.onChange();
    await _prefs.storeStatesLite(
      NOTIFICATION_PREFS_KEY,
      notificationSets.notificationSettings,
    );

    if (sets.isOn == true) {
      NotificationsHelper().setSoundEnabled(sets.isOn!);
      await _taskProvider?.resyncAllNotifications();
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

  Future<void> updateNotificationSettings() async {
    final states = await _prefs.restoreStatesLite(
      NOTIFICATION_PREFS_KEY,
      notificationSets.notificationSettings,
    );
    final len = math.min(states.length, notificationSets.notificationSettings.length);
    for (int i = 0; i < len; i++) {
      notificationSets.notificationSettings[i].isOn = states[i];
    }
    isNotification = notificationSets.notificationSettings[0].isOn ?? false;
    isSoundOn     = notificationSets.notificationSettings[1].isOn ?? false;
    notifyListeners();
  }

  TrashSettings trashSets = TrashSettings();

  void onTrashSettingsChange(TrashModel sets) {
    sets.onChange();
    _prefs.storeList(TRASH_PREFS_KEY, trashSets.trashSettings);
    notifyListeners();
  }

  void updateTrashSettings() async {
    trashSets.trashSettings = await _prefs
        .restoreTrashList(TRASH_PREFS_KEY, trashSets.trashSettings)
        .then((value) {
      if (value[0].isOn == true) {}
      if (value[1].isOn == true) {}
      return value;
    });
  }

  void cancelDeleteSettings(int index) {
    if (trashSets.trashSettings[index].isOn == true) {
      trashSets.trashSettings[index].onChange();
      _prefs.storeList(TRASH_PREFS_KEY, trashSets.trashSettings);
    }
    notifyListeners();
  }

  void onSliderChange(double newValue, int index) {
    trashSets.trashSettings[index].sliderValue = newValue.floorToDouble();
    _prefs.storeList(TRASH_PREFS_KEY, trashSets.trashSettings);
    notifyListeners();
  }

  PolicyList policyList = PolicyList();

  Future<void> loadSets() async {

    await _prefs.storeList(TRASH_PREFS_KEY, trashSets.trashSettings);
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
