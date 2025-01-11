import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:noti/styles/shapes/shape_paths/shapes_exports.dart';

class ShapesList {
  //final List<CustomClipper<Path>>
  final List<CustomClipper<Path>> _shapesList = [
    Shape1(), //default bow
    Shape9(), //snowflakes
    Shape4(),//quill
    Shape2(),//circles
    Shape6(), //butterfly
    Shape3(),//bow 2
   Shape5(),//rye
   Shape8(), //leaves
  ];

  UnmodifiableListView<CustomClipper<Path>> get shapesList {
    return UnmodifiableListView(_shapesList);
  }

  int get carouselListCounter => _shapesList.length;
}
