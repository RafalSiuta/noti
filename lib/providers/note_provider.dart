import 'dart:collection';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:photo_manager/photo_manager.dart';

import '../model/db_models/note.dart';
import '../utils/prefs/prefs.dart';

class NoteProvider extends ChangeNotifier {
  //final NoteDB _dbNote = NoteDB();

  String keyword = "";

  List<Note> _noteList = [
    Note(id:1,image:Uint8List(0),title: "Note test 1", icon: 3,keep: false, subtitle: "Note testiong app", description: "this is dummy data to test note display", date: DateTime.now()),
    Note(id:2,image:Uint8List(0),title: "Note test 2", icon: 6,keep: false, subtitle: "Note testiong app", description: "this is dummy data to test note display", date: DateTime.now()),
    Note(id:3,image:Uint8List(0),title: "Note test 3", icon: 9,keep: false, subtitle: "Note testiong app", description: "this is dummy data to test note display", date: DateTime.now()),
  ];

  List<Note> _noteListByKeyword = [
    Note(id:1,image:Uint8List(0),title: "Note test 1", icon: 3,keep: false, subtitle: "Note testiong app", description: "this is dummy data to test note display", date: DateTime.now()),
    Note(id:2,image:Uint8List(0),title: "Note test 2", icon: 6,keep: false, subtitle: "Note testiong app", description: "this is dummy data to test note display", date: DateTime.now()),
    Note(id:3,image:Uint8List(0),title: "Note test 3", icon: 9,keep: false, subtitle: "Note testiong app", description: "this is dummy data to test note display", date: DateTime.now()),
    Note(id:4,image:Uint8List(0),title: "Note test 3", icon: 9,keep: false, subtitle: "Note testiong app", description: "this is dummy data to test note display", date: DateTime.now()),
  ];

  //List<Uint8List> galleryImages = [];

  List<AssetEntity> galleryImages = [];

  AssetEntity? savedImage;

  final Prefs _notePrefs = Prefs();

  int monthsToDelete = 3;
  bool isDeleteNotesOnLoad = false;

  NoteProvider() {
    initNote();
  }

  initNote() async {
    await getSettingsValuesForNote().whenComplete(() {
      getNoteDbList();
      getNoteByKeyword();
    });

    await getGalleryImages();
    notifyListeners();
  }

  // UnmodifiableListView<Uint8List> get imageList {
  //   return UnmodifiableListView(galleryImages);
  // }
  //
  // int get imageListCounter {
  //   return galleryImages.length;
  // }

  UnmodifiableListView<AssetEntity> get imageList {
    return UnmodifiableListView(galleryImages);
  }

  int get imageListCounter {
    return galleryImages.length;
  }

  UnmodifiableListView<Note> get noteList {
    return UnmodifiableListView(_noteList);
  }

  int get noteListCounter {
    return _noteList.length;
  }

  UnmodifiableListView<Note> get noteListByKeyword {
    return UnmodifiableListView(_noteListByKeyword);
  }

  int get noteListByKeywordCounter {
    return _noteListByKeyword.length;
  }

  void addNote(Note note) async {
    // note = Note(
    //     id: note.id,
    //     image: note.image,
    //     keep: note.keep,
    //     icon: note.icon,
    //     fk: note.fk,
    //     title: note.title,
    //     subtitle: note.subtitle,
    //     description: note.description,
    //     date: note.date);
    // if (note.id != null) {
    //   await _dbNote.updateNote(note);
    // } else {
    //   await _dbNote.insertNote(note);
    // }
    // getNoteDbList();
    // getNoteByKeyword();
    // notifyListeners();
  }

  void deleteNote(Note note) async {
    // await _dbNote.deleteNote(note.id!);
    // await getNoteDbList();
    // await getNoteByKeyword();
    // notifyListeners();
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
    // await _dbNote.getAllNotes().then((value) {
    //   _noteList = value.where((element) => element.keep == true).toList();
    //
    //   // for (var image in value) {
    //   //   if (!galleryImages.contains(image.image!)) {
    //   //     addTakenPictureToGallery(image.image!);
    //   //   }
    //   // }
    //   notifyListeners();
    //   return _noteList;
    // });
    // notifyListeners();
    return _noteList;
  }

  Future<List<Note>> getNoteByKeyword() async {
    // _noteListByKeyword = await _dbNote.searchNotes(keyword);
    //
    // notifyListeners();
    return _noteListByKeyword;
  }

  bool isImageExist() {
    if (savedImage!.id.isEmpty) {
      return false;
    }
    return true;
  }

  // void addTakenPictureToGallery(Uint8List value) async {
  //   if (!galleryImages.contains(value)) {
  //     if (value != Uint8List(0) && value.isNotEmpty) {
  //       galleryImages.add(value);
  //     }
  //   }
  //
  //   notifyListeners();
  // }

  Future<List<AssetEntity>> getGalleryImages() async {
    final permitted = await PhotoManager.requestPermissionExtend();
    if (permitted.isAuth) {
      try {
        List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
          onlyAll: true,
          type: RequestType.image,
        );
        final recentAlbum = albums.first;

        await recentAlbum
            .getAssetListRange(
          start: 0, // start at index 0
          end: 1000, // end at
        )
            .then((gallery) {
          //print("Get gallery images: $gallery");
          for (var img in gallery) {
            //print(img.file.runtimeType);
            galleryImages.add(img);
            // img.thumbData.then((value) {
            //   galleryImages.add(value!);
            // });
          }

          return gallery;
        });

        notifyListeners();
      } catch (error) {
        return galleryImages;
      }
    } else {
      PhotoManager.openSetting();
    }
    notifyListeners();
    return galleryImages;
  }

  deleteAllNotesData() async {
    // await _dbNote.deleteAllNotes();
    // notifyListeners();
  }
}
