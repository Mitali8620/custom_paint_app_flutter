import 'package:flutter/material.dart';

class DrawPolygons extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    var points = [
      const Offset(50, 100),
      const Offset(150, 100),
      const Offset(200, 200),
      const Offset(150, 200),
      const Offset(125, 125),
    ];

    path.addPolygon(points, true);
  }

  @override
  bool shouldRepaint(covariant DrawPolygons oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
