import 'package:flutter/material.dart';


class Art1 extends CustomPainter {

  final List<Color> colors;

  const Art1({required this.colors});

  @override
  void paint(Canvas canvas, Size size) {

    Path path = Path();
    path.moveTo(size.width * 1, 0);
    path.quadraticBezierTo(size.width * 0.2, 0, 0, size.height * 1);
    path.quadraticBezierTo(0, size.height * 1, 0, 0);
    path.close();

    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: colors,
    );

    final paint = Paint()
      ..shader = gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}