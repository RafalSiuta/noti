import 'dart:collection';

import 'package:noti/models/settings_model/settings_model/settings_model.dart';



class NoteSettings {
  List<SettingsModel> noteSettings = [
    SettingsModel(
        title: "Notes on dashboard",
        description: "Set all notes on welcome screen",
        isOn: false),
  ];

  UnmodifiableListView<SettingsModel> get noteSettingsList {
    return UnmodifiableListView(noteSettings);
  }

  int get noteSettingsListCounter {
    return noteSettings.length;
  }
}
