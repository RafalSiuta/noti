import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

class NoteCardShape extends CustomClipper<Path> {
  NoteCardShape({double? cornerRadius, this.attachmentWidth = 0})
    : cornerRadius = cornerRadius ?? SizeInfo.innerCardCornerRadius;

  final double cornerRadius;
  final double attachmentWidth;

  @override
  ui.Path getClip(ui.Size size) {
    final path = ui.Path();
    if (size.isEmpty) {
      return path;
    }

    final leadingWidth = attachmentWidth.clamp(0.0, size.width).toDouble();
    final paperWidth = size.width - leadingWidth;
    if (paperWidth <= 0) {
      return path..addRect(Offset.zero & size);
    }

    final foldInset = paperWidth * (17 / 86);
    final foldHeight = size.height * (17 / 130);
    final radius = math
        .min(
          math.max(0, cornerRadius),
          math.min(paperWidth / 2, size.height / 2),
        )
        .toDouble();
    final foldCornerRadius = math
        .min(radius, math.min(foldInset, foldHeight))
        .toDouble();
    final foldStartX = size.width - foldInset;
    final bottomY = size.height;
    final flapLeftX = size.width - paperWidth * (14 / 86);
    final flapBottomY = size.height * (14 / 130);
    final flapRadius = math
        .min(radius, math.min(paperWidth * (2 / 86), size.height * (2 / 130)))
        .toDouble();

    path
      ..moveTo(size.width, bottomY - radius)
      ..lineTo(size.width, foldHeight)
      ..lineTo(size.width - foldInset + foldCornerRadius, foldHeight)
      ..cubicTo(
        foldStartX + foldCornerRadius * 0.447715,
        foldHeight,
        foldStartX,
        foldHeight - foldCornerRadius * 0.447715,
        foldStartX,
        foldHeight - foldCornerRadius,
      )
      ..lineTo(foldStartX, 0)
      ..lineTo(0, 0)
      ..lineTo(0, bottomY)
      ..lineTo(size.width - radius, bottomY)
      ..quadraticBezierTo(size.width, bottomY, size.width, bottomY - radius)
      ..close()
      ..moveTo(flapLeftX + flapRadius, flapBottomY)
      ..lineTo(size.width, flapBottomY)
      ..lineTo(flapLeftX, 0)
      ..lineTo(flapLeftX, flapBottomY - flapRadius)
      ..cubicTo(
        flapLeftX,
        flapBottomY - flapRadius * 0.447715,
        flapLeftX + flapRadius * 0.447715,
        flapBottomY,
        flapLeftX + flapRadius,
        flapBottomY,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant NoteCardShape oldClipper) {
    return oldClipper.cornerRadius != cornerRadius ||
        oldClipper.attachmentWidth != attachmentWidth;
  }
}
