import 'dart:io';

import '../db_model/note.dart';
import '../db_model/task.dart';

class NotiImportData {
  const NotiImportData({
    required this.file,
    required this.tasks,
    required this.notes,
    required this.settings,
  });

  final File file;
  final List<Task> tasks;
  final List<Note> notes;
  final Map<String, dynamic> settings;
}
