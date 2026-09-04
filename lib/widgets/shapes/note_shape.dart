import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../utils/dimensions/size_info.dart';

/// Clips the paper portion of a note card.
///
/// The proportions come from the 86 x 130 SVG supplied with the NoteCard
/// design. [attachmentWidth] is only used by the outer card shadow: it moves
/// the paper's folded corner to the right of the binding strip.
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

    // SVG: 86 x 130. The flap is kept as a separate subpath so it visibly
    // projects from the folded corner instead of becoming a plain diagonal.
    final foldInset = paperWidth * (17 / 86);
    final foldHeight = size.height * (17 / 130);
    final radius = math.min(
      math.max(0, cornerRadius),
      math.min(paperWidth / 2, size.height / 2),
    ).toDouble();
    final foldCornerRadius = math.min(
      radius,
      math.min(foldInset, foldHeight),
    ).toDouble();
    final foldStartX = size.width - foldInset;
    final bottomY = size.height;
    final flapLeftX = size.width - paperWidth * (14 / 86);
    final flapBottomY = size.height * (14 / 130);
    final flapRadius = math.min(
      radius,
      math.min(paperWidth * (2 / 86), size.height * (2 / 130)),
    ).toDouble();

    path
      // Main paper shape.
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
      // The separately drawn, rotated triangle from the second SVG path.
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

// <svg width="86" height="130" viewBox="0 0 86 130" fill="none" xmlns="http://www.w3.org/2000/svg">
// <path d="M86 126V17H73C70.7909 17 69 15.2091 69 13V6.946e-06H0V130H82.4167C84.3957 130 86 128.209 86 126Z" fill="#F5F5F5"/>
// <path d="M74 14L86 14L72 0V12C72 13.1046 72.8954 14 74 14Z" fill="#F5F5F5"/>
// </svg>
