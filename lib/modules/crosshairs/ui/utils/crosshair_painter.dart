import 'dart:math';
import 'package:flutter/material.dart';
import 'package:valorant_app/modules/crosshairs/infra/models/crosshair.dart';

class CrosshairPainter extends CustomPainter {
  CrosshairPainter({
    required this.crosshair,
    this.guideLinesEnabled = false,
  });

  late double height;
  late double width;

  final bool guideLinesEnabled;
  final Crosshair crosshair;

  @override
  void paint(Canvas canvas, Size size) {
    height = size.height;
    width = size.width;

    if (crosshair.innerLinesEnabled) {
      _drawInnerLines(canvas, size);
    }

    if (crosshair.outerLinesEnabled) {
      _drawOuterLines(canvas, size);
    }

    if (crosshair.centerDotsEnabled) {
      _drawCenterDot(canvas, size);
    }

    if (guideLinesEnabled) {
      _drawGuideLines(canvas, size);
    }

  }

  double _responsiveSize(num value) {
    var maxOutlineThickness = max(height, width) / 100 * 15.5;
    return (max(height, width) - maxOutlineThickness) / 100 * value;
  }

  _getCenterX(Size size, [num position = 0]) => (size.width - position) / 2;

  _getCenterY(Size size, [num position = 0]) => (size.height - position) / 2;

  _getOutlinePainter() {
    return Paint()
      ..color = Colors.black.withOpacity(crosshair.outlineOpacity)
      ..strokeWidth = _responsiveSize(crosshair.outlineThickness)
      ..style = PaintingStyle.stroke;
  }

  _getPainter({
    double opacity = 1,
    double? thickness,
  }) {
    return Paint()
      ..color = crosshair.color.withOpacity(opacity)
      ..strokeWidth = thickness ?? _responsiveSize(1)
      ..style = PaintingStyle.fill;
  }

  _drawCenterDot(Canvas canvas, Size size) {
    var fixedCenterDotThickness = _responsiveSize(crosshair.centerDotThickness);
    _drawOutlinedLine(
      canvas: canvas,
      left: _getCenterY(size, fixedCenterDotThickness),
      top: _getCenterX(size, fixedCenterDotThickness),
      width: fixedCenterDotThickness,
      height: fixedCenterDotThickness,
      thickness: fixedCenterDotThickness,
      opacity: crosshair.centerDotOpacity,
    );
  }

  _drawGuideLines(Canvas canvas, Size size) {
    var painter = Paint()
      ..color = Colors.green
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    canvas.drawLine(
      Offset(_getCenterX(size), 0),
      Offset(_getCenterX(size), size.height),
      painter,
    );

    canvas.drawLine(
      Offset(0, _getCenterY(size)),
      Offset(size.width, _getCenterY(size)),
      painter,
    );
  }

  _drawQuadrantLines({
    required Canvas canvas,
    required Size size,
    required int linesOffset,
    required int linesThickness,
    required int linesLengthX,
    required int linesLengthY,
    required double linesOpacity,
    required bool fixOffset,
  }) {
    var fixedOffset = _responsiveSize(linesOffset + (fixOffset ? 3 : 0));
    var fixedLinesThickness = _responsiveSize(linesThickness);
    var fixedLinesLengthX = _responsiveSize(linesLengthX);
    var fixedLinesLengthY = _responsiveSize(linesLengthY);

    if (linesLengthX > 0) {
      // Left side
      _drawOutlinedLine(
        left: _getCenterX(size) - fixedLinesLengthX - fixedOffset,
        top: _getCenterY(size, fixedLinesThickness),
        width: fixedLinesLengthX,
        height: fixedLinesThickness,
        canvas: canvas,
        thickness: fixedLinesThickness,
        opacity: linesOpacity,
      );

      // Right side
      _drawOutlinedLine(
        left: _getCenterX(size) + fixedOffset,
        top: _getCenterY(size, fixedLinesThickness),
        width: fixedLinesLengthX.toDouble(),
        height: fixedLinesThickness.toDouble(),
        canvas: canvas,
        thickness: fixedLinesThickness,
        opacity: linesOpacity,
      );
    }

    if (linesLengthY > 0) {
      // Top side
      _drawOutlinedLine(
        left: _getCenterX(size, fixedLinesThickness),
        top: _getCenterY(size) - fixedOffset - fixedLinesLengthY,
        width: fixedLinesThickness,
        height: fixedLinesLengthY,
        canvas: canvas,
        thickness: fixedLinesThickness,
        opacity: linesOpacity,
      );

      // Bottom side
      _drawOutlinedLine(
        left: _getCenterY(size, fixedLinesThickness),
        top: _getCenterX(size) + fixedOffset,
        width: fixedLinesThickness,
        height: fixedLinesLengthY,
        canvas: canvas,
        thickness: fixedLinesThickness,
        opacity: linesOpacity,
      );
    }
  }

  _drawInnerLines(Canvas canvas, Size size) {
    _drawQuadrantLines(
      canvas: canvas,
      size: size,
      linesOffset: crosshair.innerLineOffset,
      linesThickness: crosshair.innerLineThickness,
      linesLengthX: crosshair.innerLineLengthX,
      linesLengthY: crosshair.innerLineLengthY,
      linesOpacity: crosshair.innerLineOpacity,
      fixOffset: crosshair.innerLineFiringErrorEnabled,
    );
  }

  _drawOuterLines(Canvas canvas, Size size) {
    _drawQuadrantLines(
      canvas: canvas,
      size: size,
      linesOffset: crosshair.outerLineOffset,
      linesThickness: crosshair.outerLineThickness,
      linesLengthX: crosshair.outerLineLengthX,
      linesLengthY: crosshair.outerLineLengthY,
      linesOpacity: crosshair.outerLineOpacity,
      fixOffset: crosshair.outerLineFiringErrorEnabled,
    );
  }

  _drawOutlinedLine({
    required Canvas canvas,
    required double left,
    required double top,
    required double width,
    required double height,
    required double thickness,
    required double opacity,
  }) {
    if (crosshair.outlineEnabled) {
      var outlineThickness = _responsiveSize(crosshair.outlineThickness);
      var outlinePainter = _getOutlinePainter();
      var outlineRect = Rect.fromLTWH(
        left - outlineThickness / 2,
        top - outlineThickness / 2,
        width + outlineThickness,
        height + outlineThickness,
      );
      canvas.drawRect(outlineRect, outlinePainter);
    }

    var linePainter = _getPainter(thickness: thickness, opacity: opacity);
    var lineRect = Rect.fromLTWH(left, top, width, height);
    canvas.drawRect(lineRect, linePainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
