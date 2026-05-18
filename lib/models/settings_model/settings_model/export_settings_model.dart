import 'dart:collection';
import 'package:noti/models/settings_model/settings_model/settings_model.dart';

class ExportSettings {
  List<SettingsModel> exportSettings = [
    SettingsModel(
        title: "export_all",
        description: "export_all_description",
        isOn: true),
    SettingsModel(
        title: "export_tasks",
        description: "export_tasks_description",
        isOn: false),
    SettingsModel(
        title: "export_notes",
        description: "export_notes_description",
        isOn: false),
  ];

  UnmodifiableListView<SettingsModel> get exportSettingsList {
    return UnmodifiableListView(exportSettings);
  }

  int get exportSettingsListCounter {
    return exportSettings.length;
  }
}