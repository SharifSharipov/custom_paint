import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Exampleflag extends StatefulWidget {
  const Exampleflag({super.key});

  @override
  State<Exampleflag> createState() => _ExampleflagState();
}

class _ExampleflagState extends State<Exampleflag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flag Uzbekistan"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body:Center(
        child: CustomPaint(
          size:  const Size(350,300),
          painter: UzbekistanFlagPainter(),
        ),
      ),
    );
  }
}

class UzbekistanFlagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double bandHeight = size.height / 3;

    // Blue Band
    final paintBlue = Paint()..color = Colors.blue;
    canvas.drawRect(Offset(0, 0) & Size(size.width, bandHeight), paintBlue);

    // White Band
    final paintWhite = Paint()..color = Colors.white;
    canvas.drawRect(Offset(0, bandHeight) & Size(size.width, bandHeight), paintWhite);

    // Green Band
    final paintGreen = Paint()..color = Colors.green;
    canvas.drawRect(Offset(0, bandHeight * 2) & Size(size.width, bandHeight), paintGreen);

    // Thin Red Stripes
    final paintRed = Paint()..color = Colors.red..strokeWidth = 4.0;
    canvas.drawLine(Offset(0, bandHeight - 2), Offset(size.width, bandHeight - 2), paintRed);
    canvas.drawLine(Offset(0, bandHeight * 2 - 2), Offset(size.width, bandHeight * 2 - 2), paintRed);

    // Crescent Moon


    // Layer 1

   /* Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.0700286,size.height*0.0556639);
    path_0.lineTo(size.width*0.0521949,size.height*0.1023067);
    path_0.lineTo(size.width*0.0076149,size.height*0.1038833);
    path_0.lineTo(size.width*0.0486282,size.height*0.1388342);
    path_0.lineTo(size.width*0.0492269,size.height*0.1396148);
    path_0.lineTo(size.width*0.0177164,size.height*0.1922831);
    path_0.lineTo(size.width*0.0706273,size.height*0.1604698);
    path_0.lineTo(size.width*0.1265062,size.height*0.1930636);
    path_0.lineTo(size.width*0.0908388,size.height*0.1418314);
    path_0.lineTo(size.width*0.0902401,size.height*0.1410509);
    path_0.lineTo(size.width*0.1265062,size.height*0.1014638);
    path_0.lineTo(size.width*0.0837054,size.height*0.1014638);
    path_0.lineTo(size.width*0.0700286,size.height*0.0556639);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);*/

  }

  void drawStars(Canvas canvas, double x, double y, double radius, int count) {
    final starPaint = Paint()..color = Colors.white;
    for (int i = 0; i < count; i++) {
      final angle = (i * (360 / count)) * (pi / 180);
      final dx = x + (radius * cos(angle));
      final dy = y + (radius * sin(angle));
      canvas.drawCircle(Offset(dx, dy), radius, starPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

/* final height = size.height * 0.5; // You might want to adjust this based on your requirements
    final moonPaint = Paint()..color = Colors.white;
    final moonCenter = Offset(size.width * 0.1,height / 2);
    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width*0.0805825,size.height*0.0529115);
    path_1.cubicTo(size.width*0.0996557,size.height*0.0527687,size.width*0.0666584,size.height*0.0867387,size.width*0.0668358,size.height*0.1958975);
    path_1.cubicTo(size.width*0.0669349,size.height*0.2565413,size.width*0.1170073,size.height*0.3279212,size.width*0.0836292,size.height*0.3281474);
    path_1.cubicTo(size.width*0.0645612,size.height*0.3282783,size.width*0.0328159,size.height*0.2975101,size.width*0.0326438,size.height*0.1913864);
    path_1.cubicTo(size.width*0.0325446,size.height*0.1307427,size.width*0.0472043,size.height*0.0531377,size.width*0.0805825,size.height*0.0529115);
    path_1.close();
    canvas.drawPath(path_1, paint_fill_1);
    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint_stroke_1);*/