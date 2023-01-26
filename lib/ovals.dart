import 'package:flutter/material.dart';

class Ovals extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = Offset(size.width/2, size.height/2);
    var rectangle = Rect.fromCenter(center: center, width: 300.0, height: 150.0);
    var paint = Paint()..color = Colors.blue.shade900..style = PaintingStyle.fill;
    canvas.drawOval(rectangle, paint);
  }


  @override
  bool shouldRepaint(covariant Ovals oldDelegate) {
    return false;
  }
}
