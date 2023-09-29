import 'dart:ui';

import 'package:flutter/material.dart';

class Example5 extends StatefulWidget {
  const Example5({super.key});

  @override
  State<Example5> createState() => _Example5State();
}

class _Example5State extends State<Example5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom points :drawPoints"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
     // backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.amberAccent,
          child:  CustomPaint(
            size: const Size(300,300),
            painter:MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const points = [
      Offset(120, 240),
      Offset(50, 100),
      Offset(200, 75),
      Offset(120, 240),
      Offset(50, 100),
      Offset(200, 75),

    ];
    final point = Paint()
      ..color = Colors.white
      ..strokeWidth = 12
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.butt;
    canvas.drawPoints(PointMode.lines, points,point);
  }
  /// PaintingStyle.fill , .stroke  ,values ,
  /// StrokeCap.round,butt,square,values;
  /// PointMode.polygon,lines,points,values;

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
