import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class TaskCardShape extends CustomClipper<Path> {
  @override
  ui.Path getClip(ui.Size size) {
    Path path_0 = Path();
    const cornerRadius = 6.0;

    path_0.moveTo(cornerRadius, 0);
    path_0.lineTo(size.width - cornerRadius, 0);
    path_0.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    path_0.lineTo(size.width, size.height * 0.4618610);
    path_0.cubicTo(
        size.width,
        size.height * 0.4963800,
        size.width * 0.9932920,
        size.height * 0.5243610,
        size.width * 0.9850190,
        size.height * 0.5243610);
    path_0.lineTo(size.width * 0.8988760, size.height * 0.5243610);
    path_0.cubicTo(
        size.width * 0.8913860,
        size.height * 0.5243610,
        size.width * 0.8838950,
        size.height * 0.5888780,
        size.width * 0.8838950,
        size.height * 0.5888780);
    path_0.lineTo(size.width * 0.8838950, size.height * 0.9375000);
    path_0.cubicTo(
        size.width * 0.8838950,
        size.height * 0.9720170,
        size.width * 0.8771870,
        size.height,
        size.width * 0.8689140,
        size.height);
    path_0.lineTo(cornerRadius, size.height);
    path_0.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);
    path_0.lineTo(0, cornerRadius);
    path_0.quadraticBezierTo(0, 0, cornerRadius, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<ui.Path> oldClipper) {
    return false;
  }

}
