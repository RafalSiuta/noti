import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import '../../database/database_helper.dart';
import '../../models/db_model/note.dart';
import '../../models/db_model/task.dart';
import '../../models/import_model/noti_import_data.dart';
import '../../models/settings_model/settings_model/calendar_settings_model.dart';
import '../../models/settings_model/settings_model/export_settings_model.dart';
import '../../models/settings_model/settings_model/note_settings_model.dart';
import '../../models/settings_model/settings_model/notification_settings_model.dart';
import '../../models/settings_model/settings_model/settings_model.dart';
import '../../models/settings_model/trash_settings_model/trash_model.dart';
import '../../utils/constants/sets_keys.dart';
import '../../utils/export_helper/export_helper.dart';
import '../../utils/prefs/prefs.dart';
import '../settings_provider/trash_settings_list.dart';

class ImportResult {
  const ImportResult({
    required this.success,
    this.cancelled = false,
    this.needsOverwrite = false,
    this.message = '',
    this.fileName,
    this.folderPath,
    this.tasksCount = 0,
    this.notesCount = 0,
  });

  final bool success;
  final bool cancelled;
  final bool needsOverwrite;
  final String message;
  final String? fileName;
  final String? folderPath;
  final int tasksCount;
  final int notesCount;
}

class ExportProvider extends ChangeNotifier {
  ExportProvider() {
    _initialize();
  }

  void _initialize() {
    loadSets();
  }

  final Prefs _prefs = Prefs();
  final DatabaseHelper _dbHelper = DatabaseHelper.databaseHelper;
  final ExportHelper _exportHelper = ExportHelper();
  NotiImportData? _pendingImportData;
  ExportSettings exportSets = ExportSettings();

  void onExportSettingsChange(SettingsModel sets) async {
    for (final item in exportSets.exportSettings) {
      item.isOn = identical(item, sets);
    }
    await _prefs.storeStatesLite(EXPORT_PREFS_KEY, exportSets.exportSettings);

    notifyListeners();
  }

  Future<void> updateExportSettings() async {
    final states = await _prefs.restoreStatesLite(
      EXPORT_PREFS_KEY,
      exportSets.exportSettings,
    );
    final len = math.min(states.length, exportSets.exportSettings.length);
    for (int i = 0; i < len; i++) {
      exportSets.exportSettings[i].isOn = states[i];
    }
    _normalizeSingleExportSetting();
    await _prefs.storeStatesLite(EXPORT_PREFS_KEY, exportSets.exportSettings);
    notifyListeners();
  }

  Future<File?> getExportSettings({String? fileName}) async {
    try {
      await updateExportSettings();
      final selectedIndex = exportSets.exportSettings.indexWhere(
        (setting) => setting.isOn == true,
      );
      final exportAll = selectedIndex <= 0;
      final exportTasks = exportAll || selectedIndex == 1;
      final exportNotes = exportAll || selectedIndex == 2;

      final tasks = exportTasks ? _dbHelper.getAllTasks() : <Task>[];
      final notes = exportNotes ? _dbHelper.getAllNotes() : <Note>[];
      final settings = await _buildUserSettingsPayload();
      final file = await _exportHelper.exportNotiData(
        tasks: tasks,
        notes: notes,
        exportSettings: exportSets.exportSettings,
        settings: settings,
        fileName: fileName,
      );
      if (file == null) {
        print('Export cancelled.');
        return null;
      }

      print(
        'Export succeeded: ${file.path} '
        '(tasks: ${tasks.length}, notes: ${notes.length})',
      );
      return file;
    } catch (e, stackTrace) {
      print('Export failed: $e');
      if (kDebugMode) {
        print(stackTrace);
      }
      return null;
    }
  }

  Future<ImportResult> getImportSettings({bool overwrite = false}) async {
    try {
      final importData = overwrite
          ? _pendingImportData
          : await _pickAndReadImportFile();

      if (importData == null) {
        return const ImportResult(
          success: false,
          cancelled: true,
          message: 'Import cancelled.',
        );
      }

      _pendingImportData = importData;
      final importsTasks = _importsTasks(importData);
      final importsNotes = _importsNotes(importData);
      final existingTasks = _dbHelper.getAllTasks();
      final existingNotes = _dbHelper.getAllNotes();
      final hasExistingImportData =
          (importsTasks && existingTasks.isNotEmpty) ||
          (importsNotes && existingNotes.isNotEmpty);

      if (hasExistingImportData && !overwrite) {
        return ImportResult(
          success: false,
          needsOverwrite: true,
          fileName: _fileName(importData.file),
          folderPath: importData.file.parent.path,
          tasksCount: importData.tasks.length,
          notesCount: importData.notes.length,
          message: 'Import data already exists.',
        );
      }

      if (overwrite) {
        if (importsTasks) {
          for (final task in existingTasks) {
            await _dbHelper.deleteTask(task);
          }
        }
        if (importsNotes) {
          for (final note in existingNotes) {
            await _dbHelper.deleteNote(note);
          }
        }
      }

      await _saveImportedTasks(importData.tasks, overwrite: overwrite);
      await _saveImportedNotes(importData.notes, overwrite: overwrite);
      await _applyImportedSettings(importData.settings);
      _pendingImportData = null;
      notifyListeners();

      print(
        'Import succeeded: ${importData.file.path} '
        '(tasks: ${importData.tasks.length}, notes: ${importData.notes.length})',
      );
      return ImportResult(
        success: true,
        fileName: _fileName(importData.file),
        folderPath: importData.file.parent.path,
        tasksCount: importData.tasks.length,
        notesCount: importData.notes.length,
        message: 'Import succeeded.',
      );
    } catch (e, stackTrace) {
      print('Import failed: $e');
      if (kDebugMode) {
        print(stackTrace);
      }
      return ImportResult(success: false, message: 'Import failed: $e');
    }
  }

  Future<NotiImportData?> _pickAndReadImportFile() async {
    final file = await _exportHelper.pickNotiFile();
    if (file == null) return null;
    return _exportHelper.readNotiData(file);
  }

  Future<void> _saveImportedTasks(
    List<Task> importedTasks, {
    required bool overwrite,
  }) async {
    final existingIds = overwrite
        ? <String?>{}
        : _dbHelper.getAllTasks().map((task) => task.id).toSet();
    for (final task in importedTasks) {
      if (overwrite || !existingIds.contains(task.id)) {
        await _dbHelper.addTask(task);
      }
    }
  }

  Future<void> _saveImportedNotes(
    List<Note> importedNotes, {
    required bool overwrite,
  }) async {
    final existingIds = overwrite
        ? <String?>{}
        : _dbHelper.getAllNotes().map((note) => note.id).toSet();
    for (final note in importedNotes) {
      if (overwrite || !existingIds.contains(note.id)) {
        await _dbHelper.addNote(note);
      }
    }
  }

  Future<void> _applyImportedSettings(Map<String, dynamic> settings) async {
    final theme = settings['theme'];
    final shape = settings['shape'];
    if (theme is num) await _prefs.storeInt(THEME_PREFS_KEY, theme.toInt());
    if (shape is num) await _prefs.storeInt(SHAPE_PREFS_KEY, shape.toInt());

    await _storeImportedStates(
      CALENDAR_PREFS_KEY,
      CalendarSettings().calendarSettings,
      settings['calendarSettings'],
    );
    await _storeImportedStates(
      NOTIFICATION_PREFS_KEY,
      NotificationSettings().notificationSettings,
      settings['notificationSettings'],
    );
    await _storeImportedStates(
      EXPORT_PREFS_KEY,
      exportSets.exportSettings,
      settings['exportSettings'],
    );

    final noteDeleteSettings = settings['noteDeleteSettings'];
    if (noteDeleteSettings is Map<String, dynamic>) {
      final isNoteDelete = noteDeleteSettings['isNoteDelete'];
      final noteMonthsToDelete = noteDeleteSettings['noteMonthsToDelete'];
      if (isNoteDelete is bool) {
        await _prefs.storeBool('isNoteDelete', isNoteDelete);
      }
      if (noteMonthsToDelete is num) {
        await _prefs.storeInt('noteMonthsToDelete', noteMonthsToDelete.toInt());
      }
    }

    final trashSettings = settings['trashSettings'];
    if (trashSettings is List) {
      final trashModels = trashSettings
          .whereType<Map>()
          .map((item) => item.cast<String, dynamic>())
          .map(
            (item) => TrashModel(
              title: item['title']?.toString(),
              description: item['description']?.toString(),
              isOn: _boolValue(item['isOn']),
              sliderValue: _doubleValue(item['sliderValue']),
            ),
          )
          .toList();
      if (trashModels.isNotEmpty) {
        await _prefs.storeList(TRASH_PREFS_KEY, trashModels);
      }
    }
  }

  Future<void> _storeImportedStates(
    String key,
    List<SettingsModel> defaults,
    dynamic rawSettings,
  ) async {
    if (rawSettings is! List) return;
    final imported = rawSettings
        .whereType<Map>()
        .map((item) => item.cast<String, dynamic>())
        .toList();
    for (final setting in defaults) {
      final match = imported.where((item) => item['title'] == setting.title);
      if (match.isNotEmpty) {
        setting.isOn = _boolValue(match.first['isOn']);
      }
    }
    if (key == EXPORT_PREFS_KEY) {
      _normalizeSingleExportSetting();
    }
    await _prefs.storeStatesLite(key, defaults);
  }

  void _normalizeSingleExportSetting() {
    final selectedIndex = exportSets.exportSettings.indexWhere(
      (setting) => setting.isOn == true,
    );
    final activeIndex = selectedIndex == -1 ? 0 : selectedIndex;
    for (int i = 0; i < exportSets.exportSettings.length; i++) {
      exportSets.exportSettings[i].isOn = i == activeIndex;
    }
  }

  Future<Map<String, dynamic>> _buildUserSettingsPayload() async {
    final calendarSettings = CalendarSettings();
    final noteSettings = NoteSettings();
    final notificationSettings = NotificationSettings();
    final trashSettings = TrashSettings();

    final calendarStates = await _prefs.restoreStatesLite(
      CALENDAR_PREFS_KEY,
      calendarSettings.calendarSettings,
    );
    final notificationStates = await _prefs.restoreStatesLite(
      NOTIFICATION_PREFS_KEY,
      notificationSettings.notificationSettings,
    );
    final trashStates = await _prefs.restoreTrashList(
      TRASH_PREFS_KEY,
      trashSettings.trashSettings,
    );
    final currentTheme = await _prefs.restoreInt(THEME_PREFS_KEY, 0);
    final currentShape = await _prefs.restoreInt(SHAPE_PREFS_KEY, 0);
    final isNoteDelete = await _prefs.restoreBool('isNoteDelete', false);
    final restoredNoteMonthsToDelete = await _prefs.restoreInt(
      'noteMonthsToDelete',
      3,
    );
    final noteMonthsToDelete = restoredNoteMonthsToDelete == 0
        ? 3
        : restoredNoteMonthsToDelete;

    _applySettingStates(calendarSettings.calendarSettings, calendarStates);
    _applySettingStates(
      notificationSettings.notificationSettings,
      notificationStates,
    );

    return {
      'theme': currentTheme,
      'shape': currentShape,
      'calendarSettings': calendarSettings.calendarSettings
          .map(_settingsToJson)
          .toList(),
      'noteSettings': noteSettings.noteSettings.map(_settingsToJson).toList(),
      'noteDeleteSettings': {
        'isNoteDelete': isNoteDelete,
        'noteMonthsToDelete': noteMonthsToDelete,
      },
      'notificationSettings': notificationSettings.notificationSettings
          .map(_settingsToJson)
          .toList(),
      'trashSettings': trashStates.map(_trashToJson).toList(),
    };
  }

  void _applySettingStates(List<SettingsModel> settings, List<bool> states) {
    final len = math.min(settings.length, states.length);
    for (int i = 0; i < len; i++) {
      settings[i].isOn = states[i];
    }
  }

  Map<String, dynamic> _settingsToJson(SettingsModel setting) {
    return {
      'title': setting.title,
      'description': setting.description,
      'isOn': setting.isOn ?? false,
    };
  }

  Map<String, dynamic> _trashToJson(TrashModel setting) {
    return {
      'title': setting.title,
      'description': setting.description,
      'isOn': setting.isOn ?? false,
      'sliderValue': setting.sliderValue,
    };
  }

  bool _importsTasks(NotiImportData importData) {
    return _exportSettingIsOn(importData.settings, 'export_all') ||
        _exportSettingIsOn(importData.settings, 'export_tasks') ||
        importData.tasks.isNotEmpty;
  }

  bool _importsNotes(NotiImportData importData) {
    return _exportSettingIsOn(importData.settings, 'export_all') ||
        _exportSettingIsOn(importData.settings, 'export_notes') ||
        importData.notes.isNotEmpty;
  }

  bool _exportSettingIsOn(Map<String, dynamic> settings, String title) {
    final exportSettings = settings['exportSettings'];
    if (exportSettings is! List) return false;
    for (final item in exportSettings.whereType<Map>()) {
      if (item['title'] == title) {
        return _boolValue(item['isOn']);
      }
    }
    return false;
  }

  bool _boolValue(dynamic value) {
    if (value is bool) return value;
    if (value is num) return value != 0;
    if (value is String) return value == '1' || value.toLowerCase() == 'true';
    return false;
  }

  double? _doubleValue(dynamic value) {
    if (value is double) return value;
    if (value is num) return value.toDouble();
    return double.tryParse(value?.toString() ?? '');
  }

  String _fileName(File file) => file.path.split(RegExp(r'[\\/]')).last;

  //filename for input
  //export options
  //tasks, notes, all
  //encrypt exports
  //store to custom file .noti - json like

  Future<void> loadSets() async {
    await updateExportSettings();
  }
}
