import 'dart:collection';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:photo_manager/photo_manager.dart';

import '../database/note_db.dart';
import '../models/db_model/note.dart';
import '../utils/prefs/prefs.dart';

class NoteProvider extends ChangeNotifier {
  final NoteDB _dbNote = NoteDB();

  String keyword = "";

  List<Note> _noteList = [];

  List<Note> _noteListByKeyword = [];


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
    note = Note(
        id: note.id,
        image: note.image,
        keep: note.keep,
        icon: note.icon,
        fk: note.fk,
        title: note.title,
        subtitle: note.subtitle,
        description: note.description,
        date: note.date);
    if (note.id != null) {
      await _dbNote.updateNote(note);
    } else {
      await _dbNote.insertNote(note);
    }
    getNoteDbList();
    getNoteByKeyword();
    notifyListeners();
  }

  void deleteNote(Note note) async {
    await _dbNote.deleteNote(note.id!);
    await getNoteDbList();
    await getNoteByKeyword();
    notifyListeners();
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
    await _dbNote.getAllNotes().then((value) {
      _noteList = value.where((element) => element.keep == true).toList();

      // for (var image in value) {
      //   if (!galleryImages.contains(image.image!)) {
      //     addTakenPictureToGallery(image.image!);
      //   }
      // }
      notifyListeners();
      return _noteList;
    });
    notifyListeners();
    return _noteList;
  }

  Future<List<Note>> getNoteByKeyword() async {
    _noteListByKeyword = await _dbNote.searchNotes(keyword);

    notifyListeners();
    return _noteListByKeyword;
  }

  bool isImageExist() {
    if (savedImage!.id.isEmpty) {
      return false;
    }
    return true;
  }


  void addTakenPictureToGallery(Uint8List value) async {
    if (value != null && value.isNotEmpty) {
      final AssetEntity? asset = await _saveImageToGallery(value);
      if (asset != null) {
        galleryImages.add(asset);
        notifyListeners();
      }
    }
  }

  Future<AssetEntity?> _saveImageToGallery(Uint8List imageData) async {
    final AssetEntity? asset = await PhotoManager.editor.saveImage(Uint8List.fromList(imageData),title: 'Image${imageData.length}');
    return asset;
  }

  Future<List<AssetEntity>> getGalleryImages() async {
    final permitted = await PhotoManager.requestPermissionExtend();
    if (permitted.isAuth) {
      try {
        List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
          //onlyAll: true,
          type: RequestType.all,

        );
        print('ALBUMS NUMBERS IS: ${albums.length} FIRST ALBUM NAME IS: ${albums[1].name}');
        final recentAlbum = albums[1];

        await recentAlbum
            .getAssetListRange(
          start: 0, // start at index 0
          end: 50, // end at
        )
            .then((gallery) {
          //print("Get gallery images: $gallery");
          for (var img in gallery) {
            //print(img.file.runtimeType);
            //galleryImages.add(img);
            img.thumbnailData.then((value) async {
              final AssetEntity? asset = await _saveImageToGallery(value!);
              galleryImages.add(asset!);
            });
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
    await _dbNote.deleteAllNotes();
    notifyListeners();
  }
}
