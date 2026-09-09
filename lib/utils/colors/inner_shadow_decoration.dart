import 'package:flutter/material.dart';

class InnerShadowDecoration extends Decoration {
  const InnerShadowDecoration({required this.borderRadius, required this.color});

  final BorderRadius borderRadius;
  final Color color;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _InnerShadowBoxPainter(
      borderRadius: borderRadius,
      color: color,
    );
  }
}

class _InnerShadowBoxPainter extends BoxPainter {
  _InnerShadowBoxPainter({required this.borderRadius, required this.color});

  final BorderRadius borderRadius;
  final Color color;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final size = configuration.size;
    if (size == null) return;

    final cardShape = borderRadius.toRRect(offset & size);

    canvas.save();
    canvas.clipRRect(cardShape);
    _paintInsetShadow(canvas, cardShape, const Offset(1, 1));
    _paintInsetShadow(canvas, cardShape, const Offset(-1, -1));
    canvas.restore();
  }

  void _paintInsetShadow(Canvas canvas, RRect cardShape, Offset offset) {
    canvas.save();
    canvas.translate(offset.dx, offset.dy);
    canvas.drawRRect(
      cardShape,
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2),
    );
    canvas.restore();
  }
}
