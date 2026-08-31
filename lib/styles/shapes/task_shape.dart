import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class TaskCardShape extends CustomClipper<Path> {
  const TaskCardShape({
    this.switchButtonSide = 28.0,
    this.switchButtonGap = 6.0,
  });

  final double switchButtonSide;
  final double switchButtonGap;

  @override
  ui.Path getClip(ui.Size size) {
    Path path_0 = Path();
    const cornerRadius = 6.0;
    const cutoutRadius = cornerRadius;
    final requestedCutoutExtent = switchButtonSide + switchButtonGap;
    final maxCutoutExtent = (size.shortestSide - cornerRadius).clamp(
      0.0,
      double.infinity,
    );
    final cutoutExtent = requestedCutoutExtent > maxCutoutExtent
        ? maxCutoutExtent
        : requestedCutoutExtent;
    final cutoutLeft = size.width - cutoutExtent;
    final cutoutTop = size.height - cutoutExtent;

    path_0.moveTo(cornerRadius, 0);
    path_0.lineTo(size.width - cornerRadius, 0);
    path_0.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    path_0.lineTo(size.width, cutoutTop - cutoutRadius);
    path_0.cubicTo(
      size.width,
      cutoutTop - (cutoutRadius / 2),
      size.width - (cutoutRadius / 2),
      cutoutTop,
      size.width - cutoutRadius,
      cutoutTop,
    );
    path_0.lineTo(cutoutLeft + cutoutRadius, cutoutTop);
    path_0.cubicTo(
      cutoutLeft + (cutoutRadius / 2),
      cutoutTop,
      cutoutLeft,
      cutoutTop + (cutoutRadius / 2),
      cutoutLeft,
      cutoutTop + cutoutRadius,
    );
    path_0.lineTo(cutoutLeft, size.height - cornerRadius);
    path_0.quadraticBezierTo(
      cutoutLeft,
      size.height,
      cutoutLeft - cornerRadius,
      size.height,
    );
    path_0.lineTo(cornerRadius, size.height);
    path_0.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);
    path_0.lineTo(0, cornerRadius);
    path_0.quadraticBezierTo(0, 0, cornerRadius, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant TaskCardShape oldClipper) {
    return oldClipper.switchButtonSide != switchButtonSide ||
        oldClipper.switchButtonGap != switchButtonGap;
  }
}
