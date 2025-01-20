import 'package:flutter/widgets.dart';

class Shape2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size){
    Path path = Path();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


