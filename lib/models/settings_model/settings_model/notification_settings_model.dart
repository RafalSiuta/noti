import 'dart:collection';
import 'package:noti/models/settings_model/settings_model/settings_model.dart';


class NotificationSettings {
  List<SettingsModel> notificationSettings = [
    SettingsModel(
        title: "title_notifications",
        description: "description_notifications",
        isOn: false),
    SettingsModel(
        title: "title_sound_notifications",
        description: "description_sound_notifications",
        isOn: false),
  ];

  UnmodifiableListView<SettingsModel> get notificationSettingsList {
    return UnmodifiableListView(notificationSettings);
  }

  int get notificationSettingsListCounter {
    return notificationSettings.length;
  }
}
