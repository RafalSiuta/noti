import 'package:flutter/material.dart';

class ThemeModel {
  String title;
  int  id;
  ThemeData? themeData;
  String? imgThemePath;

  ThemeModel(
      {this.id = 1, this.title = "", required this.themeData, required this.imgThemePath});
}
