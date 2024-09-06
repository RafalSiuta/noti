import 'package:noti/database/temp_db.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import '../models/db_model/task.dart';

class TaskDB {
  TaskDB();
  final TempDatabaseHelper dbTask = TempDatabaseHelper.databaseHelper;

  // Future<List<Map<String, dynamic>>> getTaskMapList() async {
  //   Database? db = await dbTask.database;
  //   var result = await db?.rawQuery('''SELECT * FROM ${dbTask.taskTable}''');
  //   return result!;
  // }

  Future<int> deleteTask(int id) async {
    Database db = await dbTask.database!;
    var result = await db.rawDelete(
        'DELETE FROM ${dbTask.taskTable} where ${dbTask.taskId} = $id');
    return result;
  }
  //
  // fromMap(dynamic map) {
  //   Task task = Task();
  //   task.id = map['task_id'];
  //   priority = map['task_priority'] as int;
  //   icon = map['task_icon'] as int;
  //   title = map['task_title'] as String;
  //   description = map['task_description'] as String;
  //   date = DateTime.parse(map['task_date']);
  //   isTaskDone = map['is_task_done'] == 1;
  // }

  Future<List<Task>> getAllTasks() async {
    List<Task> tasks = [];
    Database? db = await dbTask.database;
    if (db != null) {
      var result = await db.query(dbTask.taskTable);
      tasks = result.map((e) {
        return Task(
          id: e['task_id'].toString(), // Poprawienie konwersji id na String
          priority: e['task_priority'] as int,
          icon: e['task_icon'] as int,
          title: e['task_title'] as String,
          description: e['task_description'] as String, // Poprawiony dostęp do mapy
          date: DateTime.tryParse(e['task_date'] as String) ?? DateTime.now(), // Bezpieczna konwersja na DateTime
          isTaskDone: (e['is_task_done'] as int) == 1, // Poprawna konwersja wartości logicznej
        );
      }).toList();
    }
    return tasks;
  }

  Future<void> deleteAllTasks() async {
    Database db = await dbTask.database!;
    dbTask.cleanDatabase(db);
    //var result = await db.delete(dbTask.taskTable);
    //return result;
  }
}
