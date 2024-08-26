// import 'package:sqflite/sqflite.dart';
// import 'dart:async';
//
// import '../models/db_model/category.dart';
// import 'database_helper.dart';
//
// class CategoryDB {
//   CategoryDB();
//   final DatabaseHelper dbCategory = DatabaseHelper.databaseHelper;
//
//   Future<List<Map<String, dynamic>>> getCategoryMapList() async {
//     Database db = await dbCategory.database;
//     var result =
//         await db.rawQuery('''SELECT * FROM ${dbCategory.categoryTable}''');
//     return result;
//   }
//
//   Future<int> insertCategory(NoteCategory category) async {
//     Database db = await dbCategory.database;
//     var result = await db.insert(dbCategory.categoryTable, category.toMap());
//     return result;
//   }
//
//   Future<int> updateCategory(NoteCategory category) async {
//     Database db = await dbCategory.database;
//     var result = await db.update(dbCategory.categoryTable, category.toMap(),
//         where: '${dbCategory.noteCategoryId} = ?', whereArgs: [category.id]);
//     return result;
//   }
//
//   Future<int> deleteCategory(int id) async {
//     Database db = await dbCategory.database;
//     var result = await db.rawDelete(
//         'DELETE FROM ${dbCategory.categoryTable} where ${dbCategory.noteCategoryId} = $id');
//     return result;
//   }
//
//   Future<int> deleteAllCategories() async {
//     Database db = await dbCategory.database;
//     var result = await db.delete(dbCategory.categoryTable);
//     return result;
//   }
//
//   Future<List<NoteCategory>> getAllCategories() async {
//     Database db = await dbCategory.database;
//     var result = await db.query(dbCategory.categoryTable);
//     return result.map((e) => NoteCategory.fromMap(e)).toList();
//   }
//
//
// }
