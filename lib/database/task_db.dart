//
// import 'package:sqflite/sqflite.dart';
// import 'dart:async';
// import '../models/db_model/task.dart';
// import 'database_helper.dart';
//
// class TaskDB {
//   TaskDB();
//   final DatabaseHelper dbTask = DatabaseHelper.databaseHelper;
//
//   Future<List<Map<String, dynamic>>> getTaskMapList() async {
//     Database db = await dbTask.database;
//     var result = await db.rawQuery('''SELECT * FROM ${dbTask.taskTable}''');
//     return result;
//   }
//
//   Future<int> insertTask(Task task) async {
//     Database db = await dbTask.database;
//     var result = await db.insert(dbTask.taskTable, task.toMap());
//     return result;
//   }
//
//   Future<int> updateTask(Task task) async {
//     Database db = await dbTask.database;
//     var result = await db.update(dbTask.taskTable, task.toMap(),
//         where: '${dbTask.taskId} = ?', whereArgs: [task.id]);
//     return result;
//   }
//
//   Future<int> deleteTask(int id) async {
//     Database db = await dbTask.database;
//     var result = await db.rawDelete(
//         'DELETE FROM ${dbTask.taskTable} where ${dbTask.taskId} = $id');
//     return result;
//   }
//
//   Future<List<Task>> getAllTasks() async {
//     Database db = await dbTask.database;
//     var result = await db.query(dbTask.taskTable);
//     return result.map((e) => Task.fromMap(e)).toList();
//   }
//
//   Future<int> deleteAllTasks() async {
//     Database db = await dbTask.database;
//     var result = await db.delete(dbTask.taskTable);
//     return result;
//   }
// }
