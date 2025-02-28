import 'dart:collection';
import 'package:noti/providers/settings_provider.dart';
import 'package:flutter/foundation.dart';
import '../database/database_helper.dart';
import '../models/db_model/note.dart';
import '../utils/prefs/prefs.dart';
import 'note_search_provider.dart';

class NoteProvider extends ChangeNotifier  {

  SettingsProvider settings;
  NoteSearchProvider searchProvider;

  NoteProvider(this.settings, this.searchProvider) {
    initNote();

  }

  final DatabaseHelper _dbHelper = DatabaseHelper.databaseHelper;

  List<Note> _noteList = [];

  List<Note> _noteListByKeyword = [];


  final Prefs _notePrefs = Prefs();

  int monthsToDelete = 3;

  bool isDeleteNotesOnLoad = false;

  Future<void> initNote() async {
    await getSettingsValuesForNote().whenComplete((){
      getNoteDbList();
      getNoteBySearchOptions();
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

    if(note.isInBox){
      await _dbHelper.updateNote(note);
    }else{
      await _dbHelper.addNote(note);
    }

     getNoteDbList();
     getNoteBySearchOptions();
    notifyListeners();
  }

  void deleteNote(Note note) async {
    await _dbHelper.deleteNote(note);
    getNoteDbList();
    getNoteBySearchOptions();
    notifyListeners();
  }

  Future<List<Note>> getNoteBySearchOptions() async {
    List<Note> list = _dbHelper.getAllNotes();

    if (searchProvider.keyword.isEmpty &&
        searchProvider.startDate == searchProvider.endDate) {
      _noteListByKeyword = _dbHelper.getAllNotes();
    } else {

      if (searchProvider.keyword.isNotEmpty) {
        _noteListByKeyword = list.where((note) {
          return note.title.toLowerCase().contains(searchProvider.keyword.toLowerCase()) ||
              note.description.toLowerCase().contains(searchProvider.keyword.toLowerCase());
        }).toList();
      }

      if (searchProvider.startDate.isBefore(searchProvider.endDate) && searchProvider.endDate.isAfter(searchProvider.startDate)) {
        _noteListByKeyword = list.where((note) {
          return note.date.isAfter(searchProvider.startDate) && note.date.isBefore(searchProvider.endDate);
        }).toList();
      }
      notifyListeners();
    }

    notifyListeners();
    return _noteListByKeyword;
  }

  void resetNoteSearch() {
    searchProvider.resetSearchFilters();
    _noteListByKeyword = _dbHelper.getAllNotes();
    notifyListeners();
  }


  void deleteSelectedNotes()async {
     await getNoteBySearchOptions().then((notes){
      for(Note note in notes){
        print("SELECTED NOTES TO DELETE ${note.title}");
        //deleteNote(note);
      }
    });
     notifyListeners();
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

}
// Future<void> deleteAllNotesData() async {
//   await _dbHelper.closeHive();
//   notifyListeners();
// }

// Future<List<Note>> getNoteBySearchOptions() async {
//   List<Note> list = _dbHelper.getAllNotes();
//
//   if (searchProvider.keyword.isEmpty && searchProvider.startDate == searchProvider.endDate) {
//     _noteListByKeyword = _dbHelper.getAllNotes();
//   } else {
//
//     if (searchProvider.keyword.isNotEmpty) {
//       _noteListByKeyword = list.where((note) {
//         return note.title.toLowerCase().contains(searchProvider.keyword.toLowerCase()) ||
//             note.description.toLowerCase().contains(searchProvider.keyword.toLowerCase());
//       }).toList();
//     }
//
//     if (searchProvider.startDate.isBefore(searchProvider.endDate) && searchProvider.endDate.isAfter(searchProvider.startDate)) {
//       _noteListByKeyword = list.where((note) {
//         return note.date.isAfter(searchProvider.startDate) && note.date.isBefore(searchProvider.endDate);
//       }).toList();
//     }
//     notifyListeners();
//   }
//
//   notifyListeners();
//   return _noteListByKeyword;
// }

// Future<List<Note>> getNoteBySearchOptions() async {
//   List<Note> list = _dbHelper.getAllNotes();
//
//   if (searchProvider.keyword.isEmpty && searchProvider.startDate == searchProvider.endDate) {
//     _noteListByKeyword = _dbHelper.getAllNotes();
//   } else {
//     _noteListByKeyword = list.where((note) {
//       return note.title.toLowerCase().contains(searchProvider.keyword.toLowerCase()) ||
//           note.description.toLowerCase().contains(searchProvider.keyword.toLowerCase());
//     }).toList();
//   }
//
//   notifyListeners();
//   return _noteListByKeyword;
// }
// Future<List<Note>> getNoteBySearchOptions() async {
//   List<Note> list = _dbHelper.getAllNotes();
//
//   if (keyword.isEmpty && startDate == endDate) {
//     _noteListByKeyword = _dbHelper.getAllNotes();
//   } else {
//
//     if (keyword.isNotEmpty) {
//       _noteListByKeyword = list.where((note) {
//         return note.title.toLowerCase().contains(keyword.toLowerCase()) ||
//             note.description.toLowerCase().contains(keyword.toLowerCase());
//       }).toList();
//     }
//
//     if (startDate.isBefore(endDate) && endDate.isAfter(startDate)) {
//       _noteListByKeyword = list.where((note) {
//         return note.date.isAfter(startDate) && note.date.isBefore(endDate);
//       }).toList();
//     }
//     notifyListeners();
//   }
//
//   notifyListeners();
//   return _noteListByKeyword;
// }
//
// void getFullMonth(DateTime focDay){
//
//   startDate = DateTime(focDay.year, focDay.month, 1);
//   endDate = DateTime(focDay.year, focDay.month + 1, 1).subtract(Duration(days: 1));
//   getNoteByKeyword();
//
//   notifyListeners();
// }
//
// void resetSearchFilters(){
//
//   keyword = "";
//   startDate = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day);
//   endDate = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day);
//
//   _noteListByKeyword = _dbHelper.getAllNotes();
//
//   notifyListeners();
// }