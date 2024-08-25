import 'dart:collection';
import 'package:noti/models/settings_model/settings_model/settings_model.dart';

class PermissionSettings{
  List<SettingsModel> permissionSettings = [
    SettingsModel(
        title: "File storage",
        description: "Allows an application to write and read from external storage.",
        isOn: false),
    SettingsModel(
        title: "Camera access",
        description: "Required to be able to access the camera device.",
        isOn: false),
    SettingsModel(
        title: "Notifications",
        description: "Allows an app to post notifications",
        isOn: false),
    SettingsModel(
        title: "Wake lock",
        description: "Allows using PowerManager WakeLocks to keep processor from sleeping or screen from dimming.",
        isOn: false),
    SettingsModel(
        title: "Vibrate",
        description: "Allows access to the vibrator.",
        isOn: false),
  ];

  UnmodifiableListView<SettingsModel> get permissionSettingsList {
    return UnmodifiableListView(permissionSettings);
  }

  int get permissionSettingsListCounter {
    return permissionSettings.length;
  }
}