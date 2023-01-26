import 'package:flutter/material.dart';

class RoundRectangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = Offset(size.width * 0.5, 100);
    var roundedRectangle = RRect.fromRectAndRadius(
      Rect.fromCenter(center: center, width: 300.0, height: 150.0),
      const Radius.circular(32.0),
    );
    var paint = Paint()
      ..color = Colors.blue.shade900
      ..style = PaintingStyle.fill;
    canvas.drawRRect(roundedRectangle, paint);
  }

  @override
  bool shouldRepaint(covariant RoundRectangle oldDelegate) {
    return false;
  }
}
