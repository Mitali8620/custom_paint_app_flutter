import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class DrawVertices extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var vertices = ui.Vertices(VertexMode.triangleStrip, [
      Offset(100, 100),
      Offset(200, 100),
      Offset(350, 300),
      Offset(400, 100),
      Offset(500, 300),
      Offset(700, 200),
    ]);
    canvas.drawVertices(
      vertices,
      BlendMode.plus,
      Paint()..color = Colors.blue,
    );
  }


  @override
  bool shouldRepaint(covariant DrawVertices oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}