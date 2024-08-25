
import 'package:noti/database/database_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

//import '../models/db_model/category.dart';
import '../models/db_model/note.dart';

class NoteDB {
  NoteDB();
  final DatabaseHelper dbNote = DatabaseHelper.databaseHelper;

  Future<List<Map<String, dynamic>>> getNoteMapList() async {
    Database db = await dbNote.database;
    var result = await db.rawQuery('''SELECT * FROM ${dbNote.noteTable}''');
    return result;
  }

  Future<int> insertNote(Note note) async {
    Database db = await dbNote.database;
    var result = await db.insert(dbNote.noteTable, note.toMap());
    return result;
  }

  Future<int> updateNote(Note note) async {
    Database db = await dbNote.database;
    var result = await db.update(dbNote.noteTable, note.toMap(),
        where: '${dbNote.noteId} = ?', whereArgs: [note.id]);
    return result;
  }

  Future<int> deleteNote(int id) async {
    Database db = await dbNote.database;
    var result = await db.rawDelete(
        'DELETE FROM ${dbNote.noteTable} where ${dbNote.noteId} = $id');
    return result;
  }

  Future<int> deleteAllNotes() async {
    Database db = await dbNote.database;
    var result = await db.delete(dbNote.noteTable);
    return result;
  }

  Future<List<Note>> getAllNotes() async {
    Database db = await dbNote.database;
    var result = await db.query(dbNote.noteTable);
    return result.map((e) => Note.fromMap(e)).toList();
  }

  Future<List<Note>> searchNotes(String keyword) async {
    final db = await dbNote.database;
    List<Map<String, dynamic>> allRows = await db.query(dbNote.noteTable,
        where: 'note_title LIKE ?', whereArgs: ['%$keyword%']);
    List<Note> notes = allRows.map((note) => Note.fromMap(note)).toList();
    return notes;
  }

  // Future<List<Note>> getNotesByCategory(NoteCategory noteCategory) async {
  //   final db = await dbNote.database;
  //   List<Map<String, dynamic>> allRows = await db.rawQuery('''
  //   SELECT * FROM ${dbNote.noteTable}
  //   WHERE ${dbNote.noteFK} = ${noteCategory.id}
  //   ''');
  //   List<Note> notes = allRows.map((note) => Note.fromMap(note)).toList();
  //   return notes;
  // }
  //todo : https://github.com/jurkko/sqflitetutorial2/blob/a6c97bf4f0d1e3b491873b4be0562e6bd0f0964f/lib/data/contact_operations.dart
}
