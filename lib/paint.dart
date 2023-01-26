import 'package:flutter/material.dart';

class PaintDraw extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.blue.shade900;
    canvas.drawPaint(paint);
  }

  @override
  bool shouldRepaint(covariant PaintDraw oldDelegate) {
    return false;
  }
}
