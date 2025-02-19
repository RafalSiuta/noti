import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:noti/providers/note_provider.dart';
import 'package:noti/providers/task_provider.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../models/db_model/note.dart';
import '../models/db_model/task.dart';
import 'package:flutter/services.dart' show rootBundle;

class HomeProvider extends ChangeNotifier {

  final TaskProvider taskProvider;
  final NoteProvider noteProvider;

  List<Task> tasks = [];
  List<Note> notes = [];

  HomeProvider({required this.taskProvider, required this.noteProvider}){
    _initialize();
  }

  void _initialize() {

    SchedulerBinding.instance.addPostFrameCallback((_) async {

     // await loadJsonFromAssetsAndSaveToDatabase();
      //await updateJsonFileWithDatabaseData();
    });
  }

  final DateFormat mY = DateFormat('dd MMM yyyy');
  final DateFormat wD = DateFormat('EEEE');
  DateTime _date = DateTime.now();


  DateTime get date => _date;


  void _startDateTimeUpdates() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _date = DateTime.now();
      notifyListeners();
    });
  }


  Future<void> updateJsonFileWithDatabaseData() async {
    try {
      final directory = await getExternalStorageDirectory();
      final filePath = '${directory!.path}/tasks_notes.json';
      final file = File(filePath);

      if (!await file.exists()) {
        await file.writeAsString(jsonEncode({
          'tasks': [],
          'notes': [],
        }));
      }

      List<Task> tasks = await taskProvider.getAllTasks();
      List<Note> notes = await noteProvider.getNoteDbList();


      Map<String, dynamic> jsonData = {
        'tasks': tasks.map((task) => {
          'id': task.id,
          'priority': task.priority,
          'icon': task.icon,
          'isTaskDone': task.isTaskDone,
          'title': task.title,
          'description': task.description,
          'date': task.date.toIso8601String(),
          'items': [],
          'image': "",
          'isNotification': task.isNotification,
        }).toList(),
        'notes': notes.map((note) => {
          'id': note.id,
          'icon': note.icon,
          'image': "",
          'keep': note.keep,
          'title': note.title,
          'subtitle': note.subtitle,
          'description': note.description,
          'fk': note.fk,
          'date': note.date.toIso8601String(),
        }).toList(),
      };

      await file.writeAsString(jsonEncode(jsonData));

      print('Plik $filePath został zaktualizowany.');
    } catch (e) {
      print('Błąd podczas aktualizacji pliku JSON: $e');
    }
  }

  Future<void> loadJsonFromAssetsAndSaveToDatabase() async {
    try {
      final String jsonContent = await rootBundle.loadString('assets/data/tasks_notes.json');
      final Map<String, dynamic> data = jsonDecode(jsonContent);

      if (data.isEmpty || !(data is Map<String, dynamic>)) {
        print('Nieprawidłowa struktura pliku JSON.');
        return;
      }

      final List<dynamic> tasksData = data['tasks'] ?? [];
      final List<dynamic> notesData = data['notes'] ?? [];

      if (tasksData.isEmpty && notesData.isEmpty) {
        print('Brak danych do załadowania.');
        return;
      }

      // Dodanie tasków tylko jeśli nie istnieją w bazie
      for (var taskData in tasksData) {
        final taskId = taskData['id'];
        bool taskExists = taskProvider.taskList.any((task) => task.id == taskId);

        if (!taskExists) {
          Task task = Task(
            id: taskId,
            priority: taskData['priority'] ?? 0,
            icon: taskData['icon'] ?? 0,
            isTaskDone: taskData['isTaskDone'] ?? false,
            title: taskData['title'] ?? "",
            description: taskData['description'] ?? "",
            date: taskData['date'] != null ? DateTime.parse(taskData['date']) : DateTime.now(),
            items: [],
            image: null,
            isNotification: taskData['isNotification'] ?? false,
          );
         taskProvider.addTask(task);
        }
      }

      // Dodanie notatek tylko jeśli nie istnieją w bazie
      for (var noteData in notesData) {
        final noteId = noteData['id'];
        bool noteExists = noteProvider.noteList.any((note) => note.id == noteId);

        if (!noteExists) {
          Note note = Note(
            id: noteId,
            icon: noteData['icon'] ?? 0,
            image: null,
            keep: noteData['keep'] ?? false,
            title: noteData['title'] ?? "",
            subtitle: noteData['subtitle'] ?? "",
            description: noteData['description'] ?? "",
            fk: noteData['fk'],
            date: noteData['date'] != null ? DateTime.parse(noteData['date']) : DateTime.now(),
          );
          noteProvider.addNote(note);
        }
      }

      print('Dane zostały pomyślnie załadowane z pliku assets i zapisane do bazy danych.');
    } catch (e) {
      print('Błąd podczas ładowania danych z pliku assets: $e');
    }
  }


// Future<void> loadJsonFromAssetsAndSaveToDatabase() async {
  //   try {
  //
  //     final String jsonContent = await rootBundle.loadString('assets/data/tasks_notes.json');
  //     final Map<String, dynamic> data = jsonDecode(jsonContent);
  //
  //     final List<dynamic> tasksData = data['tasks'] ?? [];
  //     final List<dynamic> notesData = data['notes'] ?? [];
  //
  //     List<Task> tasks = tasksData.map((taskData) {
  //       return Task(
  //         id: taskData['id'],
  //         priority: taskData['priority'] ?? 0,
  //         icon: taskData['icon'] ?? 0,
  //         isTaskDone: taskData['isTaskDone'] ?? false,
  //         title: taskData['title'] ?? "",
  //         description: taskData['description'] ?? "",
  //         date: taskData['date'] != null ? DateTime.parse(taskData['date']) : DateTime.now(),
  //         items: [],
  //         image: null,
  //         isNotification: taskData['isNotification'] ?? false,
  //       );
  //     }).toList();
  //
  //     for (Task task in tasks) {
  //
  //      taskProvider.addTask(task);
  //     }
  //
  //     List<Note> notes = notesData.map((noteData) {
  //       return Note(
  //         id: noteData['id'],
  //         icon: noteData['icon'] ?? 0,
  //         image: null,
  //         keep: noteData['keep'] ?? false,
  //         title: noteData['title'] ?? "",
  //         subtitle: noteData['subtitle'] ?? "",
  //         description: noteData['description'] ?? "",
  //         fk: noteData['fk'],
  //         date: noteData['date'] != null ? DateTime.parse(noteData['date']) : DateTime.now(),
  //       );
  //     }).toList();
  //
  //     for (Note note in notes) {
  //     noteProvider.addNote(note);
  //     }
  //
  //     print('Dane zostały pomyślnie załadowane z pliku assets i zapisane do bazy danych.');
  //   } catch (e) {
  //     print('Błąd podczas ładowania danych z pliku assets: $e');
  //   }
  // }

}

