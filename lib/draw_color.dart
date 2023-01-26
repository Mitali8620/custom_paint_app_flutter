import 'package:flutter/material.dart';

class DrawColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPaint(Paint()..color = Colors.blue);
    canvas.drawColor(Colors.purple, BlendMode.plus);
  }

  @override
  bool shouldRepaint(covariant DrawColor oldDelegate) {
    return false;
  }
}
