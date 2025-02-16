import 'dart:collection';
import 'package:noti/providers/settings_provider.dart';
import 'package:flutter/foundation.dart';

import '../database/database_helper.dart';
import '../models/db_model/note.dart';
import '../utils/prefs/prefs.dart';

class NoteProvider extends ChangeNotifier {
  final DatabaseHelper _dbHelper = DatabaseHelper.databaseHelper;

  String keyword = "";

  List<Note> _noteList = [];

  List<Note> _noteListByKeyword = [];


  final Prefs _notePrefs = Prefs();

  int monthsToDelete = 3;

  bool isDeleteNotesOnLoad = false;

  SettingsProvider settings;

  NoteProvider(this.settings) {
    initNote();
  }

  Future<void> initNote() async {
    await getSettingsValuesForNote().whenComplete((){
      getNoteDbList();
      getNoteByKeyword();
    });
    notifyListeners();
  }


  UnmodifiableListView<Note> get noteListByKeyword {
    return UnmodifiableListView(_noteListByKeyword);
  }

  int get noteListByKeywordCounter {
    return _noteListByKeyword.length;
  }

  UnmodifiableListView<Note> get noteList {
    return UnmodifiableListView(_noteList);
  }

  int get noteListCounter {
    return _noteList.length;
  }

  // void testNoteDb(Note note, String message){
  //   print("####### $message -> NOTE ID: ${note.id}\nTITLE: ${note.title} KEEP ${note.keep}");
  // }

  void addNote(Note note) async {

    //todo: remove prints:
    if(note.isInBox){
      await _dbHelper.updateNote(note);
    }else{
      await _dbHelper.addNote(note);
    }

     getNoteDbList();
     getNoteByKeyword();
    notifyListeners();
  }

  void deleteNote(Note note) async {
    await _dbHelper.deleteNote(note);
    getNoteDbList();
    getNoteByKeyword();
    notifyListeners();
  }

  Future<void> deleteAllNotesData() async {
    await _dbHelper.closeHive();
    notifyListeners();
  }


  Future<List<Note>> getNoteByKeyword() async {
    List<Note> list = _dbHelper.getAllNotes();

    if(keyword != ""){
      _noteListByKeyword = list.where((note) {
        return note.title.toLowerCase().contains(keyword.toLowerCase()) ||
            note.description.toLowerCase().contains(keyword.toLowerCase());
      }).toList();
    }else{
      _noteListByKeyword = _dbHelper.getAllNotes();
    }

    notifyListeners();
    return _noteListByKeyword;
  }

    Future<void> getSettingsValuesForNote() async {
    await _notePrefs
        .restoreBool("isNoteDelete", isDeleteNotesOnLoad)
        .then((value) => isDeleteNotesOnLoad = value);
    await _notePrefs
        .restoreInt("noteMonthsToDelete", monthsToDelete)
        .then((value) => monthsToDelete = value)
        .whenComplete(() =>
            loadNoteListBySettingsValues(monthsToDelete, isDeleteNotesOnLoad));
    notifyListeners();
  }

  Future<List<Note>> getNoteDbList() async {
    _noteList = _dbHelper.getAllNotes()
        .where((note) => note.keep == true)
        .toList();

    notifyListeners();
    return _noteList;
  }

  loadNoteListBySettingsValues(int months, bool isDeleting) async {
    isDeleteNotesOnLoad = isDeleting;
    monthsToDelete = months;
    _notePrefs.storeBool("isNoteDelete", isDeleteNotesOnLoad);
    _notePrefs.storeInt("noteMonthsToDelete", monthsToDelete);
    final currentMonth = DateTime(
        DateTime.now().year, (DateTime.now().month + 1) - monthsToDelete);
    if (isDeleteNotesOnLoad == true) {
      await getNoteDbList().then((value) {
        for (var note in value) {
          if (note.date.isBefore(currentMonth)) {
            deleteNote(note);
          }
          notifyListeners();
        }
      });
    }
    notifyListeners();
  }

  Future<List<Note>> deleteAllNotes() async{
    List<Note> list = _dbHelper.getAllNotes();

    for(Note note in list){
      deleteNote(note);
    }

    notifyListeners();
    return list;
  }

  Future<List<Note>> getAllDataNotes() async {
    List<Note> list = _dbHelper.getAllNotes();

    notifyListeners();
    return list;
  }
}