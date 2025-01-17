import 'dart:collection';

import 'package:noti/models/settings_model/trash_settings_model/trash_model.dart';



class TrashSettings {
  List<TrashModel> trashSettings = [
    TrashModel(
        title: "Delete notes",
        description: "Delete old notes after (date)",
        sliderValue: 0,
        isOn: false),
    TrashModel(
        title: "Delete tasks",
        description: "Delete old tasks after (date)",
        sliderValue: 0,
        isOn: false),
  ];

  UnmodifiableListView<TrashModel> get trashSettingsList {
    return UnmodifiableListView(trashSettings);
  }

  int get trashSettingsListCounter {
    return trashSettings.length;
  }
}
