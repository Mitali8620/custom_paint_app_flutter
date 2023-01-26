import 'package:flutter/material.dart';

import 'arc.dart';
import 'circle.dart';
import 'draw_color.dart';
import 'draw_text.dart';
import 'line.dart';
import 'ovals.dart';
import 'paint.dart';
import 'polygons.dart';
import 'rectengle.dart';
import 'round_rectengle.dart';
import 'vertices.dart';

class CustomPaintScreen extends StatefulWidget {
  const CustomPaintScreen({Key? key}) : super(key: key);

  @override
  State<CustomPaintScreen> createState() => _CustomPaintScreenState();
}

class _CustomPaintScreenState extends State<CustomPaintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom paint implement")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Rectangle
            CustomPaint(
              size: const Size(500, 150),
              painter: Rectangle(),
            ),

            ///Filled Rectangle
            CustomPaint(
              size: const Size(500, 150),
              painter: Rectangle(isFilled: true),
            ),

            ///line
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width * 0.5,
                  MediaQuery.of(context).size.height * 0.1),
              painter: Line(),
            ),

            ///Circle
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width * 0.5,
                  MediaQuery.of(context).size.height * 0.1),
              painter: Circle(),
            ),
            const SizedBox(
              height: 20,
            ),

            ///Arc
            CustomPaint(
              size: Size(MediaQuery.of(context).size.width * 0.5,
                  MediaQuery.of(context).size.height * 0.1),
              painter: ArcDesign(),
            ),

            ///RoundRectangle
            CustomPaint(
              size: const Size(500, 150),
              painter: RoundRectangle(),
            ),
            const SizedBox(
              height: 80,
            ),

            ///Ovals
            CustomPaint(
              size: const Size(500, 150),
              painter: Ovals(),
            ),

            ///Paint
            // SizedBox(
            //   height: 500,
            //   child: CustomPaint(
            //     size: Size(500, 150),
            //     painter: PaintDraw(),
            //   ),
            // ),
            ///If you see draw paint simple uncommented this portion

            ///Draw Color
            // SizedBox(
            //   height: 500,
            //   child: CustomPaint(
            //     size: Size(500, 150),
            //     painter: DrawColor(),
            //   ),
            // ),

            ///If you see draw Color simple uncommented this portion

            ///Draw text
            SizedBox(
              height: 500,
              child: CustomPaint(
                size: const Size(500, 150),
                painter: DrawTextPaint(),
              ),
            ),

            ///Draw Vertices
            SizedBox(
              height: 500,
              child: CustomPaint(
                size: const Size(500, 150),
                painter: DrawVertices(),
              ),
            ),

            ///Draw Polygons
            CustomPaint(
              size: const Size(500, 150),
              painter: DrawPolygons(),
            ),
          ],
        ),
      ),
    );
  }
}
