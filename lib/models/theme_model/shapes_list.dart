import 'dart:collection';
import 'package:flutter/widgets.dart';
import '../../styles/shapes/shape_paths/shapes_exports.dart';

class ShapesList {
  final List<CustomClipper<Path>> _shapesList = [
    Shape1(),
    Shape9(),
    Shape4(),
    Shape2(),
    Shape6(),
    Shape3(),
    Shape5(),
    Shape8(),
  ];

  UnmodifiableListView<CustomClipper<Path>> get shapesList {
    return UnmodifiableListView(_shapesList);
  }

  int get carouselListCounter => _shapesList.length;
}
