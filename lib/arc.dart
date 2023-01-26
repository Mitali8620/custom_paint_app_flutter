import 'dart:math';

import 'package:flutter/material.dart';

class ArcDesign extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.blue.shade900;

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 50,
        height: 50,
      ),
      0.5,
      2 * pi - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
