import 'package:sqflite/sqflite.dart';
import 'dart:async';

class DatabaseHelper {
  static final DatabaseHelper databaseHelper = DatabaseHelper._init();
  static Database? _database;

  String taskTable = 'task_table';
  String taskId = 'task_id';
  String taskTitle = 'task_title';
  String taskDescription = 'task_description';
  String taskPriority = 'task_priority';
  String taskIcon = 'task_icon';
  String taskDate = 'task_date';
  String taskDone = 'is_task_done';

  String noteTable = 'note_table';
  String noteId = 'note_id';
  String noteImage = 'note_image';
  String noteTitle = 'note_title';
  String noteSubtitle = 'note_subtitle';
  String noteDescription = 'note_description';
  String noteIcon = 'note_icon';
  String noteKeep = 'keep_in_mind';
  String noteDate = 'note_date';
  String noteFK = 'FK_note';

  String categoryTable = 'category_table';
  String noteCategoryId = 'category_id';
  String noteCategoryName = 'category_name';

  DatabaseHelper._init();

//custom getter
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initializeDatabase();
    return _database!;
  }

  Future<Database> _initializeDatabase() async {
    final dbPath = await getDatabasesPath();
    String path = dbPath + 'note_database.db';

    var notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    //todo remove prints
    print('DATABASE IS INITIALIZED');
    return notesDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    Batch batch = db.batch();
    batch.execute('''CREATE TABLE $taskTable(
    $taskId INTEGER PRIMARY KEY,
    $taskTitle STRING NOT NULL,
    $taskDescription STRING NOT NULL, 
    $taskPriority INTEGER NOT NULL,
    $taskIcon INTEGER NOT NULL,
    $taskDate STRING,
    $taskDone INTEGER NOT NULL)''');

    batch.execute('''CREATE TABLE $noteTable(
    $noteId INTEGER PRIMARY KEY,
    $noteImage BLOB,
    $noteTitle STRING NOT NULL,
    $noteSubtitle STRING NOT NULL,
    $noteDescription STRING NOT NULL, 
    $noteIcon INTEGER NOT NULL,
    $noteKeep INTEGER NOT NULL,
    $noteDate STRING,
    $noteFK INT NOT NULL,
    FOREIGN KEY ($noteFK) REFERENCES $categoryTable ($noteCategoryId) )''');

    batch.execute('''CREATE TABLE $categoryTable(
    $noteCategoryId INTEGER PRIMARY KEY,
    $noteCategoryName STRING NOT NULL)''');
    batch.commit();
  }

  Future closeDb() async => _database!.close();

  Future<void> cleanDatabase(Database db) async {
    try {
      Batch batch = db.batch();
      await db.transaction((txn) async {
        batch = txn.batch();
        batch.delete(taskTable);
        batch.delete(noteTable);
        await batch.commit();
      });
    } catch (error) {
      throw Exception('DbBase.cleanDatabase: ' + error.toString());
    }
  }
}
