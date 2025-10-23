import 'dart:collection';
import 'package:noti/models/settings_model/trash_settings_model/trash_model.dart';

class TrashSettings {
  List<TrashModel> trashSettings = [
    TrashModel(
        title: "title_delete_notes",
        description: "description_delete_notes",
        sliderValue: 0,
        isOn: false,
    ),
    TrashModel(
        title: "title_delete_tasks",
        description: "description_delete_tasks",
        sliderValue: 0,
        isOn: false,),
    TrashModel(
      title: "title_delete_all_tasks",
      description: "description_delete_all_tasks",
      sliderValue: 0,
      isOn: false,),
    TrashModel(
      title: "title_delete_all_notes",
      description: "description_delete_all_notes",
      sliderValue: 0,
      isOn: false,),
  ];

  UnmodifiableListView<TrashModel> get trashSettingsList {
    return UnmodifiableListView(trashSettings);
  }

  int get trashSettingsListCounter {
    return trashSettings.length;
  }
}
