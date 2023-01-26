import 'package:flutter/material.dart';

class Line extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color =  Colors.blue.shade900;
    paint.strokeWidth = 5;
    paint.strokeCap = StrokeCap.round;

    Offset startingOffset = Offset(0, size.height);
    Offset endingOffset = Offset(size.width, size.height);

    canvas.drawLine(startingOffset, endingOffset, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
