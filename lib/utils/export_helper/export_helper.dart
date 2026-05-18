import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../../models/db_model/note.dart';
import '../../models/db_model/task.dart';
import '../../models/db_model/task_item.dart';
import '../../models/import_model/noti_import_data.dart';
import '../../models/settings_model/settings_model/settings_model.dart';

class ExportHelper {
  Future<File?> exportNotiData({
    required List<Task> tasks,
    required List<Note> notes,
    required List<SettingsModel> exportSettings,
    required Map<String, dynamic> settings,
    String? fileName,
  }) async {
    final directory = await resolveExportDirectory();
    final safeName = _normalizeFileName(fileName);
    final payload = {
      'format': 'noti_export',
      'formatVersion': 1,
      'appVersion': '1.0.0',
      'exportedAt': DateTime.now().toUtc().toIso8601String(),
      'device': {'platform': Platform.operatingSystem},
      'payload': {
        'notes': notes.map(_noteToJson).toList(),
        'tasks': tasks.map(_taskToJson).toList(),
        'settings': {
          ...settings,
          'exportSettings': exportSettings.map(_settingsToJson).toList(),
        },
      },
    };

    final json = const JsonEncoder.withIndent('  ').convert(payload);
    final savedPath = await FilePicker.saveFile(
      dialogTitle: 'Save Noti export',
      fileName: safeName,
      initialDirectory: directory.path,
      type: FileType.any,
      bytes: Uint8List.fromList(utf8.encode(json)),
    );
    if (savedPath == null || savedPath.isEmpty) return null;
    return File(savedPath);
  }

  Future<File?> pickNotiFile() async {
    final directory = await resolveExportDirectory();
    final result = await FilePicker.pickFiles(
      type: FileType.any,
      initialDirectory: directory.path,
      withData: false,
    );
    final path = result?.files.single.path;
    if (path == null || path.isEmpty) return null;
    if (!path.toLowerCase().endsWith('.noti')) {
      throw const FormatException('Selected file is not a .noti file.');
    }
    return File(path);
  }

  Future<NotiImportData> readNotiData(File file) async {
    final raw = await file.readAsString(encoding: utf8);
    final root = jsonDecode(raw);
    if (root is! Map<String, dynamic>) {
      throw const FormatException('Invalid .noti file root.');
    }
    if (root['format'] != 'noti_export') {
      throw const FormatException('Unsupported import format.');
    }

    final payload = root['payload'];
    if (payload is! Map<String, dynamic>) {
      throw const FormatException('Missing import payload.');
    }

    final rawTasks = payload['tasks'];
    final rawNotes = payload['notes'];
    final rawSettings = payload['settings'];

    return NotiImportData(
      file: file,
      tasks: rawTasks is List
          ? rawTasks
                .whereType<Map>()
                .map((item) => _taskFromJson(item.cast<String, dynamic>()))
                .toList()
          : <Task>[],
      notes: rawNotes is List
          ? rawNotes
                .whereType<Map>()
                .map((item) => _noteFromJson(item.cast<String, dynamic>()))
                .toList()
          : <Note>[],
      settings: rawSettings is Map<String, dynamic> ? rawSettings : {},
    );
  }

  Future<Directory> resolveExportDirectory() async {
    try {
      final downloads = await getDownloadsDirectory();
      if (downloads != null) return downloads;
    } catch (_) {}

    try {
      final external = await getExternalStorageDirectory();
      if (external != null) return external;
    } catch (_) {}

    return getApplicationDocumentsDirectory();
  }

  String _normalizeFileName(String? fileName) {
    final input = (fileName == null || fileName.trim().isEmpty)
        ? 'noti_data'
        : fileName.trim();
    final sanitized = input.replaceAll(RegExp(r'[\\/:*?"<>|]'), '_');
    if (sanitized.toLowerCase().endsWith('.noti')) return sanitized;
    final nameWithoutJson = sanitized.toLowerCase().endsWith('.json')
        ? sanitized.substring(0, sanitized.length - 5)
        : sanitized;
    return '$nameWithoutJson.noti';
  }

  Map<String, dynamic> _taskToJson(Task task) {
    return {
      'id': task.id,
      'priority': task.priority,
      'icon': task.icon,
      'isTaskDone': task.isTaskDone,
      'title': task.title,
      'description': task.description,
      'date': task.date.toIso8601String(),
      'items': task.items?.map(_taskItemToJson).toList() ?? [],
      'image': _bytesToBase64(task.image),
      'isNotification': task.isNotification,
    };
  }

  Map<String, dynamic> _taskItemToJson(TaskItem item) {
    return {
      'id': item.id,
      'title': item.title,
      'text': item.text,
      'isDone': item.isDone,
      'image': _bytesToBase64(item.image),
    };
  }

  Map<String, dynamic> _noteToJson(Note note) {
    return {
      'id': note.id,
      'icon': note.icon,
      'image': _bytesToBase64(note.image),
      'keep': note.keep,
      'title': note.title,
      'subtitle': note.subtitle,
      'description': note.description,
      'fk': note.fk,
      'date': note.date.toIso8601String(),
    };
  }

  Map<String, dynamic> _settingsToJson(SettingsModel setting) {
    return {
      'title': setting.title,
      'description': setting.description,
      'isOn': setting.isOn ?? false,
    };
  }

  Task _taskFromJson(Map<String, dynamic> json) {
    final rawItems = json['items'];
    return Task(
      id: _stringValue(json['id']),
      priority: _intValue(json['priority']),
      icon: _intValue(json['icon']),
      title: _stringValue(json['title']) ?? '',
      isTaskDone: _boolValue(json['isTaskDone']),
      description: _stringValue(json['description']) ?? '',
      date: _dateValue(json['date']),
      items: rawItems is List
          ? rawItems
                .whereType<Map>()
                .map((item) => _taskItemFromJson(item.cast<String, dynamic>()))
                .toList()
          : <TaskItem>[],
      image: _base64ToBytes(json['image']),
      isNotification: _boolValue(json['isNotification'], fallback: true),
    );
  }

  TaskItem _taskItemFromJson(Map<String, dynamic> json) {
    return TaskItem(
      id: _stringValue(json['id']),
      title: _stringValue(json['title']) ?? '',
      text: _stringValue(json['text']) ?? '',
      isDone: _boolValue(json['isDone']),
      image: _base64ToBytes(json['image']),
    );
  }

  Note _noteFromJson(Map<String, dynamic> json) {
    return Note(
      id: _stringValue(json['id']),
      icon: _intValue(json['icon']),
      image: _base64ToBytes(json['image']),
      keep: _boolValue(json['keep']),
      title: _stringValue(json['title']) ?? '',
      subtitle: _stringValue(json['subtitle']) ?? '',
      description: _stringValue(json['description']) ?? '',
      fk: json['fk'] == null ? null : _intValue(json['fk']),
      date: _dateValue(json['date']),
    );
  }

  String? _bytesToBase64(Uint8List? bytes) {
    if (bytes == null || bytes.isEmpty) return null;
    return base64Encode(bytes);
  }

  Uint8List? _base64ToBytes(dynamic value) {
    final text = _stringValue(value);
    if (text == null || text.isEmpty) return null;
    return base64Decode(text);
  }

  String? _stringValue(dynamic value) => value?.toString();

  int _intValue(dynamic value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    return int.tryParse(value?.toString() ?? '') ?? 0;
  }

  bool _boolValue(dynamic value, {bool fallback = false}) {
    if (value is bool) return value;
    if (value is num) return value != 0;
    if (value is String) return value == '1' || value.toLowerCase() == 'true';
    return fallback;
  }

  DateTime _dateValue(dynamic value) {
    return DateTime.tryParse(value?.toString() ?? '') ?? DateTime.now();
  }
}
