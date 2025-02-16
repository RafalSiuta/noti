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
import '../models/db_model/task_item.dart';

class HomeProvider extends ChangeNotifier {

  final TaskProvider taskProvider;
  final NoteProvider noteProvider;

  List<Task> tasks = [];
  List<Note> notes = [];

  HomeProvider({required this.taskProvider, required this.noteProvider}){
    _initialize();
  }

  void _initialize() {
    // Wywołaj fetchAllData po zakończeniu budowy drzewa widgetów
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await fetchAllDataAndSaveToFile();
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



  Future<void> fetchAllDataAndSaveToFile() async {
    try {
      // Pobierz wszystkie zadania z TaskProvider
      List<Task> tasks = await taskProvider.getTaskDbList();

      // Pobierz wszystkie notatki z NoteProvider
      List<Note> notes = await noteProvider.getNoteDbList();

      // Serializacja danych do JSON
      Map<String, dynamic> data = {
        'tasks': tasks.map((task) => {
          'id': task.id,
          'priority': task.priority,
          'icon': task.icon,
          'isTaskDone': task.isTaskDone,
          'title': task.title,
          'description': task.description,
          'date': task.date.toIso8601String(),
          'items': task.items?.map((item) => {
            'id': item.id,
            'text': item.text,
            'isDone': item.isDone,
            'title': item.title,
          }).toList(),
          'image': task.image?.toString(), // Jeśli chcesz obsługiwać obraz
          'isNotification': task.isNotification,
        }).toList(),
        'notes': notes.map((note) => {
          'id': note.id,
          'icon': note.icon,
          'image': note.image?.toString(),
          'keep': note.keep,
          'title': note.title,
          'subtitle': note.subtitle,
          'description': note.description,
          'fk': note.fk,
          'date': note.date.toIso8601String(),
        }).toList(),
      };

      // Zapisz dane do pliku JSON
      final directory = 'D:\DEV\FLUTTER\FLUTTER_PROJECTS\calendar_todo';
          //await getApplicationDocumentsDirectory();
      final file = File('${directory}/tasks_and_notes.json');
      await file.writeAsString(jsonEncode(data));

      print('Dane zostały zapisane do pliku: ${file.path}');
    } catch (e) {
      print('Error fetching and saving data: $e');
    }
  }

  // Future<void> loadDataFromFileAndSaveToDatabase() async {
  //   try {
  //     // Odczytaj plik JSON
  //     final directory = await getApplicationDocumentsDirectory();
  //     final file = File('${directory.path}/tasks_and_notes.json');
  //     if (!await file.exists()) {
  //       print('Plik nie istnieje.');
  //       return;
  //     }
  //     final String jsonData = await file.readAsString();
  //
  //     // Deserializacja danych
  //     Map<String, dynamic> data = jsonDecode(jsonData);
  //
  //     // Wczytaj zadania do bazy
  //     List<Task> tasks = (data['tasks'] as List).map((taskData) {
  //       return Task(
  //         id: taskData['id'],
  //         priority: taskData['priority'],
  //         icon: taskData['icon'],
  //         isTaskDone: taskData['isTaskDone'],
  //         title: taskData['title'],
  //         description: taskData['description'],
  //         date: DateTime.parse(taskData['date']),
  //         items: (taskData['items'] as List?)?.map((item) {
  //           return TaskItem(
  //             id: item['id'],
  //             text: item['text'],
  //             isDone: item['isDone'],
  //             title: item['title'],
  //           );
  //         }).toList(),
  //         image: null, // Obsługa obrazu jeśli konieczna
  //         isNotification: taskData['isNotification'],
  //       );
  //     }).toList();
  //
  //     for (Task task in tasks) {
  //       await taskProvider.addTask(task);
  //     }
  //
  //     // Wczytaj notatki do bazy
  //     List<Note> notes = (data['notes'] as List).map((noteData) {
  //       return Note(
  //         id: noteData['id'],
  //         icon: noteData['icon'],
  //         image: null, // Obsługa obrazu jeśli konieczna
  //         keep: noteData['keep'],
  //         title: noteData['title'],
  //         subtitle: noteData['subtitle'],
  //         description: noteData['description'],
  //         fk: noteData['fk'],
  //         date: DateTime.parse(noteData['date']),
  //       );
  //     }).toList();
  //
  //     for (Note note in notes) {
  //       await noteProvider.addNote(note);
  //     }
  //
  //     print('Dane zostały wczytane i zapisane do lokalnej bazy.');
  //   } catch (e) {
  //     print('Error loading and saving data: $e');
  //   }
  // }


}

