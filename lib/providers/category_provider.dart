import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

import '../database/category_db.dart';
import '../models/db_model/category.dart';

class NoteCategoryProvider extends ChangeNotifier {
  final CategoryDB _dbCategory = CategoryDB();

  List<NoteCategory> _categoryList = [];

  NoteCategoryProvider() {
    initCategory();
  }

  initCategory() async {
    getCategoryDbList();
    notifyListeners();
  }

  selectNoteCategory(int index) {
    _categoryList.length = index;
    notifyListeners();
  }

  UnmodifiableListView<NoteCategory> get categoryList {
    return UnmodifiableListView(_categoryList);
  }

  int get noteCategoryListCounter {
    return _categoryList.length;
  }

  void addCategory(NoteCategory category) async {
    category = NoteCategory(id: category.id, name: category.name);
    if (category.id != null && category.id != 1) {
      await _dbCategory.updateCategory(category);
    } else {
      await _dbCategory.insertCategory(category);
    }
    getCategoryDbList();
    notifyListeners();
  }

  void deleteCategory(NoteCategory category) async {
    if (category.id != 1) {
      await _dbCategory.deleteCategory(category.id!);
    }
    await getCategoryDbList();
    notifyListeners();
  }

  Future<List<NoteCategory>> getCategoryDbList() async {
    _categoryList = await _dbCategory.getAllCategories();

    notifyListeners();
    return _categoryList;
  }
}
