import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

class NoteCardShapeAttachment extends CustomClipper<Path> {
  NoteCardShapeAttachment({double? cornerRadius})
    : cornerRadius = cornerRadius ?? SizeInfo.innerCardCornerRadius;

  final double cornerRadius;

  @override
  ui.Path getClip(ui.Size size) {
    final path = ui.Path()..fillType = ui.PathFillType.evenOdd;
    if (size.isEmpty) {
      return path;
    }

    final radius = math
        .min(math.max(0, cornerRadius), math.min(size.width, size.height) / 2)
        .toDouble();
    path
      ..moveTo(size.width, size.height)
      ..lineTo(radius, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height - radius)
      ..lineTo(0, radius)
      ..quadraticBezierTo(0, 0, radius, 0)
      ..lineTo(size.width, 0)
      ..close();

    final holeRadius = math
        .min(size.width * (3 / 10), size.height * (3 / 130))
        .toDouble();
    for (final yFactor in const [14 / 130, 48 / 130, 82 / 130, 116 / 130]) {
      path.addOval(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height * yFactor),
          radius: holeRadius,
        ),
      );
    }

    return path;
  }

  @override
  bool shouldReclip(covariant NoteCardShapeAttachment oldClipper) {
    return oldClipper.cornerRadius != cornerRadius;
  }
}
