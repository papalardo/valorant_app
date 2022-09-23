import 'dart:math';

import 'package:flutter/material.dart';
import 'package:valorant_app/utils/palette_colors.dart';

class RandomDotsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = PaletteColors.primary.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    double dotSize = 10;
    double paddingRight = 40;
    canvas.drawRect(Rect.fromLTWH(size.width - paddingRight, 0, dotSize, dotSize), paint);
    canvas.drawRect(Rect.fromLTWH(size.width - paddingRight, 40, dotSize, dotSize), paint);

    Path path = Path();

    var polygonPaint = Paint()
      ..color = PaletteColors.primary
      ..style = PaintingStyle.fill;

    path.addPolygon([
      Offset(0, size.height * 0.15),
      Offset(size.width, size.height * 0.8),
      Offset(size.width, size.height),
      Offset(0, size.height),
    ], true);

    canvas.drawPath(path, polygonPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
