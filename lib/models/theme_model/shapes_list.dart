import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:noti/styles/shapes/shape_paths/shapes_exports.dart';

class ShapesList {
  final List<CustomClipper<Path>> _shapesList = [
    Shape1(), //default bow
    Shape9(), //snowflakes
   // Shape10(),
    Shape4(),
    Shape2(),
    Shape6(), //butterfly
   // Shape7(), //canabis
    Shape3(),
    Shape5(),
   // Shape12(), //rain
    Shape8(), //leaves
    //Shape13(), //flowers
   // Shape11(), //stars
  ];

  UnmodifiableListView<CustomClipper<Path>> get shapesList {
    return UnmodifiableListView(_shapesList);
  }

  int get carouselListCounter => _shapesList.length;
}
