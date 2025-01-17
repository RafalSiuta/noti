
import 'package:flutter/widgets.dart';

class Shape3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //wave 2
    Path path = Path();
    path.moveTo(size.width * 0.9996801, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.9997014);
    path.cubicTo(
        size.width * 0.2143525,
        size.height * 0.3734388,
        size.width * 0.2164037,
        size.height * 0.2349209,
        size.width * 0.3998720,
        size.height * 0.1438849);
    path.cubicTo(
        size.width * 0.5880294,
        size.height * 0.05052302,
        size.width * 0.8868733,
        size.height * 0.1542644,
        size.width * 0.9996801,
        0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
