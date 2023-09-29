import 'dart:math';

import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  const Example4({super.key});

  @override
  State<Example4> createState() => _Example4State();
}

class _Example4State extends State<Example4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom painter:drawArc"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.indigo,
          child: CustomPaint(
            size: const Size(300, 300),
            painter:MyPainter(sweepAngle: 2 * pi / 2) ,
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({required this.sweepAngle});
  final double sweepAngle;
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = const Offset(30, 60) & const Size(120, 120);
    const startAngle = 0.9;
    const userCenter = true;
    final point = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    canvas.drawArc(rect, startAngle, sweepAngle, false, point);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
