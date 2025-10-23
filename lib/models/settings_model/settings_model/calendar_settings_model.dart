import 'dart:collection';

import 'package:noti/models/settings_model/settings_model/settings_model.dart';

class CalendarSettings {
  List<SettingsModel> calendarSettings = [
    SettingsModel(
        title: "title_sunday_first",
        description: "description_sunday_first",
        isOn: false),
    SettingsModel(
        title: "title_monthly_theme",
        description: "description_monthly_theme",
        isOn: false),
  ];

  UnmodifiableListView<SettingsModel> get calendarSettingsList {
    return UnmodifiableListView(calendarSettings);
  }

  int get calendarSettingsListCounter {
    return calendarSettings.length;
  }
}
