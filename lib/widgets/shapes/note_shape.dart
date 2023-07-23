import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class NoteCardShape extends CustomClipper<Path> {
  @override
  ui.Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9995000, size.height * 0.1410266);
    path_0.lineTo(size.width * 0.7996006, 0);
    path_0.lineTo(size.width * 0.04870130, 0);
    path_0.cubicTo(size.width * 0.02180519, 0, 0, size.height * 0.01622222, 0,
        size.height * 0.03623188);
    path_0.lineTo(0, size.height * 0.9637681);
    path_0.cubicTo(0, size.height * 0.9837778, size.width * 0.02180519,
        size.height, size.width * 0.04870130, size.height);
    path_0.cubicTo(size.width * 0.2182143, size.height, size.width * 0.7812857,
        size.height, size.width * 0.9507987, size.height);
    path_0.cubicTo(
        size.width * 0.9776948,
        size.height,
        size.width * 0.9995000,
        size.height * 0.9837778,
        size.width * 0.9995000,
        size.height * 0.9637681);
    path_0.cubicTo(
        size.width * 0.9995000,
        size.height * 0.8004928,
        size.width * 0.9995000,
        size.height * 0.1410266,
        size.width * 0.9995000,
        size.height * 0.1410266);
    path_0.close();
    path_0.moveTo(size.width * 0.04790584, size.height * 0.8589734);
    path_0.cubicTo(
        size.width * 0.06692857,
        size.height * 0.8589734,
        size.width * 0.08237338,
        size.height * 0.8704638,
        size.width * 0.08237338,
        size.height * 0.8846159);
    path_0.cubicTo(
        size.width * 0.08237338,
        size.height * 0.8987681,
        size.width * 0.06692857,
        size.height * 0.9102560,
        size.width * 0.04790584,
        size.height * 0.9102560);
    path_0.cubicTo(
        size.width * 0.02888312,
        size.height * 0.9102560,
        size.width * 0.01344156,
        size.height * 0.8987681,
        size.width * 0.01344156,
        size.height * 0.8846159);
    path_0.cubicTo(
        size.width * 0.01344156,
        size.height * 0.8704638,
        size.width * 0.02888312,
        size.height * 0.8589734,
        size.width * 0.04790584,
        size.height * 0.8589734);
    path_0.close();
    path_0.moveTo(size.width * 0.05549026, size.height * 0.6005000);
    path_0.cubicTo(
        size.width * 0.07451299,
        size.height * 0.6005000,
        size.width * 0.08995455,
        size.height * 0.6119903,
        size.width * 0.08995455,
        size.height * 0.6261401);
    path_0.cubicTo(
        size.width * 0.08995455,
        size.height * 0.6402923,
        size.width * 0.07451299,
        size.height * 0.6517826,
        size.width * 0.05549026,
        size.height * 0.6517826);
    path_0.cubicTo(
        size.width * 0.03646753,
        size.height * 0.6517826,
        size.width * 0.02102597,
        size.height * 0.6402923,
        size.width * 0.02102597,
        size.height * 0.6261401);
    path_0.cubicTo(
        size.width * 0.02102597,
        size.height * 0.6119903,
        size.width * 0.03646753,
        size.height * 0.6005000,
        size.width * 0.05549026,
        size.height * 0.6005000);
    path_0.close();
    path_0.moveTo(size.width * 0.04990909, size.height * 0.3420266);
    path_0.cubicTo(
        size.width * 0.06893182,
        size.height * 0.3420266,
        size.width * 0.08437338,
        size.height * 0.3535145,
        size.width * 0.08437338,
        size.height * 0.3676667);
    path_0.cubicTo(
        size.width * 0.08437338,
        size.height * 0.3818188,
        size.width * 0.06893182,
        size.height * 0.3933068,
        size.width * 0.04990909,
        size.height * 0.3933068);
    path_0.cubicTo(
        size.width * 0.03088636,
        size.height * 0.3933068,
        size.width * 0.01544481,
        size.height * 0.3818188,
        size.width * 0.01544481,
        size.height * 0.3676667);
    path_0.cubicTo(
        size.width * 0.01544481,
        size.height * 0.3535145,
        size.width * 0.03088636,
        size.height * 0.3420266,
        size.width * 0.04990909,
        size.height * 0.3420266);
    path_0.close();
    path_0.moveTo(size.width * 0.04897078, size.height * 0.08355072);
    path_0.cubicTo(
        size.width * 0.06799351,
        size.height * 0.08355072,
        size.width * 0.08343831,
        size.height * 0.09504106,
        size.width * 0.08343831,
        size.height * 0.1091932);
    path_0.cubicTo(
        size.width * 0.08343831,
        size.height * 0.1233430,
        size.width * 0.06799351,
        size.height * 0.1348333,
        size.width * 0.04897078,
        size.height * 0.1348333);
    path_0.cubicTo(
        size.width * 0.02995130,
        size.height * 0.1348333,
        size.width * 0.01450649,
        size.height * 0.1233430,
        size.width * 0.01450649,
        size.height * 0.1091932);
    path_0.cubicTo(
        size.width * 0.01450649,
        size.height * 0.09504106,
        size.width * 0.02995130,
        size.height * 0.08355072,
        size.width * 0.04897078,
        size.height * 0.08355072);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<ui.Path> oldClipper) {
    return false;
  }
}
