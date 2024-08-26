import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/db_model/note.dart';
import '../models/db_model/task.dart';


class DatabaseHelper {
  static final DatabaseHelper databaseHelper = DatabaseHelper._init();

  late Box<Task> _taskBox;
  late Box<Note> _noteBox;

  DatabaseHelper._init();

  Future<void> initializeHive() async {

    await Hive.initFlutter();
    Hive.registerAdapter(TaskAdapter());
    Hive.registerAdapter(NoteAdapter());


    // Sprawdzamy, czy boks istnieje, zanim spróbujemy go otworzyć
    if (!Hive.isBoxOpen('taskBox')) {
      _taskBox = await Hive.openBox<Task>('taskBox');
    } else {
      _taskBox = Hive.box<Task>('taskBox');
    }

    if (!Hive.isBoxOpen('noteBox')) {
      _noteBox = await Hive.openBox<Note>('noteBox');
    } else {
      _noteBox = Hive.box<Note>('noteBox');
    }

    // _taskBox = await Hive.openBox<Task>('taskBox');
    // _noteBox = await Hive.openBox<Note>('noteBox');
  }

  Future<void> addTask(Task task) async {
    await _taskBox.add(task);
  }

  Future<void> updateTask(Task task) async {
    await task.save();
  }

  Future<void> deleteTask(Task task) async {
    await task.delete();
  }

  List<Task> getAllTasks() {
    return _taskBox.values.toList();
  }

  Future<void> addNote(Note note) async {
    await _noteBox.add(note);
  }

  Future<void> updateNote(Note note) async {
    await note.save();
  }

  Future<void> deleteNote(Note note) async {
    await note.delete();
  }

  List<Note> getAllNotes() {
    return _noteBox.values.toList();
  }

  Future<void> closeHive() async {
    await Hive.close();
  }
}
