import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

/// Clips the binding strip of a note card, including its four cut-out holes.
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

    final radius = math.min(
      math.max(0, cornerRadius),
      math.min(size.width, size.height) / 2,
    ).toDouble();
    path
      ..moveTo(size.width, size.height)
      ..lineTo(radius, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height - radius)
      ..lineTo(0, radius)
      ..quadraticBezierTo(0, 0, radius, 0)
      ..lineTo(size.width, 0)
      ..close();

    // SVG: centres (5, 14), (5, 48), (5, 82), (5, 116), radius 3.
    // The holes stay circular even if the strip is made wider or narrower.
    final holeRadius =
        math.min(size.width * (3 / 10), size.height * (3 / 130)).toDouble();
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

// <svg width="10" height="130" viewBox="0 0 10 130" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path fill-rule="evenodd" clip-rule="evenodd" d="M10 130H4C1.79086 130 2.01332e-09 128.209 0 126V4C0 1.79086 1.79086 0 4 0H10V130ZM5 113C3.34315 113 2 114.343 2 116C2 117.657 3.34315 119 5 119C6.65685 119 8 117.657 8 116C8 114.343 6.65685 113 5 113ZM5 79C3.34315 79 2 80.3431 2 82C2 83.6569 3.34315 85 5 85C6.65685 85 8 83.6569 8 82C8 80.3431 6.65685 79 5 79ZM5 45C3.34315 45 2 46.3431 2 48C2 49.6569 3.34315 51 5 51C6.65685 51 8 49.6569 8 48C8 46.3431 6.65685 45 5 45ZM5 11C3.34315 11 2 12.3431 2 14C2 15.6569 3.34315 17 5 17C6.65685 17 8 15.6569 8 14C8 12.3431 6.65685 11 5 11Z" fill="#F5F5F5"/>
// </svg>
