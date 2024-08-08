import 'package:flutter/material.dart';

class ThemeModel {
  String title;
  ThemeData? themeData;
  String? imgThemePath;

  ThemeModel(
      {this.title = "", required this.themeData, required this.imgThemePath});
}
