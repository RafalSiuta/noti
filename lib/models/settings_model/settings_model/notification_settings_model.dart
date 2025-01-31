import 'dart:collection';

import 'package:noti/models/settings_model/settings_model/settings_model.dart';

<<<<<<< HEAD
=======

>>>>>>> main/main
class NotificationSettings {
  List<SettingsModel> notificationSettings = [
    SettingsModel(
        title: "Notifications",
        description: "Turn on/off notifications",
        isOn: false),
    SettingsModel(
        title: "Notification sound",
        description: "Turn on/off notification sound",
        isOn: false),
  ];

  UnmodifiableListView<SettingsModel> get notificationSettingsList {
    return UnmodifiableListView(notificationSettings);
  }

  int get notificationSettingsListCounter {
    return notificationSettings.length;
  }
}
