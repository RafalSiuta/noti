import 'package:flutter/widgets.dart';
import './nav_model.dart';

class ScreenModel {
  ScreenModel({required this.page, required this.title});

  final Widget? page;
  final NavModel? title;
}
