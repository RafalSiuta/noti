import 'dart:collection';

import 'package:noti/models/settings_model/settings_model/settings_model.dart';


class NotificationSettings {
  List<SettingsModel> notificationSettings = [
    SettingsModel(
        title: "Notifications",
        description: "Turn on/off notifications",
        isOn: true),
    SettingsModel(
        title: "Notification sound",
        description: "Turn on/off notification sound",
        isOn: true),
  ];

  UnmodifiableListView<SettingsModel> get notificationSettingsList {
    return UnmodifiableListView(notificationSettings);
  }

  int get notificationSettingsListCounter {
    return notificationSettings.length;
  }
}
