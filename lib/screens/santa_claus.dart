import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SantaClaus extends StatefulWidget {
  const SantaClaus({super.key});

  @override
  State<SantaClaus> createState() => _SantaClausState();
}

class _SantaClausState extends State<SantaClaus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Santa Clasus"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: CustomPaint(
            size: Size(400.h,900.w),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const startAngle = 0.9;
    const startAngle1 = -0.8;
       const startAngle2 = -0.8;
    final sweepAngle1=2*pi;
    final sweepAngle2=3*pi/2;
    final sweepAngle3=3*pi/2;
    final radius = min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    var paintHat = Paint()..color =  Colors.black;
    var paintHat1 = Paint()..color =   Colors.red;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width / 2 - 70, size.height / 2 - 260, 140, 40),
        paintHat);
    canvas.drawRect(
        Rect.fromLTWH(
            size.width / 2 - 50, size.height / 2 - 330, 100, 70),
        paintHat1);
    final point = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;
    final point4 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawCircle(
        Offset(center.dx - radius / 7, center.dy - radius / 1.2), 15,point4);
    canvas.drawCircle(
        Offset(center.dx + radius / 4, center.dy - radius / 1.2), 15, point4);
    /// Nose
    var pointsNose = [
      Offset(size.width / 2 + 100, size.height / 2.3 - 90),
      Offset(size.width / 2, size.height / 2.3 - 70),
      Offset(size.width / 2 - 5, size.height / 2.3 - 95),
      Offset(size.width / 2 + 95, size.height / 2.3 - 90),
      Offset(size.width / 2, size.height / 2.3 - 70),
      Offset(size.width / 2 - 5, size.height / 2.3 - 95),
    ];
    final paintNose = Paint()
      ..color = Colors.amberAccent
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawPoints(PointMode.lines, pointsNose, paintNose);
    /// Hands
    final paintHand = Paint()
      ..color = Colors.black
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
        Offset(size.width / 2 - 80, size.height / 2 - 50),
        Offset(size.width / 2 - 120, size.height / 2 - 100),
        paintHand);
    canvas.drawLine(
        Offset(size.width / 2 + 80, size.height / 2 - 50),
        Offset(size.width / 2 + 120, size.height / 2 - 100),
        paintHand);
    ///og'iz
    Rect rect = Rect.fromCircle(center:const Offset(200,260), radius: 110);
    canvas.drawCircle(
        Offset(center.dx - radius / 5, center.dy - radius / 2), 8, point4);
    canvas.drawCircle(
        Offset(center.dx - radius / 11, center.dy - radius / 2.4), 8,point4);
    canvas.drawCircle(
        Offset(center.dx +radius / 11, center.dy - radius / 2.4), 8, point4);
    canvas.drawCircle(
        Offset(center.dx +radius / 5, center.dy - radius / 2), 8, point4);
    canvas.drawArc(rect, startAngle, sweepAngle1, false, point);
    final point1 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;
    Rect rect1 = Rect.fromCircle(center: Offset(200,400), radius: 140);
    canvas.drawArc(rect1, startAngle1, sweepAngle2, false, point1);
    final point2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;
    Rect rect3 =  Rect.fromCircle(center: Offset(200,600), radius: 160);
    canvas.drawArc(rect3, startAngle2, sweepAngle3, false, point2);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

