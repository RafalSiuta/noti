import 'dart:collection';
import 'package:noti/models/settings_model/settings_model/settings_model.dart';

class CalendarSettings {
  List<SettingsModel> calendarSettings = [
    SettingsModel(
        title: "Sunday first",
        description: "Set sunday as first weekday",
        isOn: false),
    SettingsModel(
        title: "Monthly theme",
        description: "Change theme and shapes every month",
        isOn: false),
  ];

  UnmodifiableListView<SettingsModel> get calendarSettingsList {
    return UnmodifiableListView(calendarSettings);
  }

  int get calendarSettingsListCounter {
    return calendarSettings.length;
  }
}
