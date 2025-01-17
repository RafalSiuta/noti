
import 'package:flutter/widgets.dart';

class Shape1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //wave
    Path path = Path();
    path.moveTo(size.width * 1, 0);
    path.quadraticBezierTo(size.width * 0.2, 0, 0, size.height * 1);
    path.quadraticBezierTo(0, size.height * 1, 0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
