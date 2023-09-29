import 'package:flutter/material.dart';
class Example6 extends StatefulWidget {
  const Example6({super.key});

  @override
  State<Example6> createState() => _Example6State();
}

class _Example6State extends State<Example6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom painter:draw"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
          child: CustomPaint(
            size: const Size(300,300),
            painter:  MyPointer(),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class MyPointer extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    var path = Path();
    // moveTo and  lineTo
    path.moveTo(20, size.height / 2);
    path.lineTo(size.width / 2-90, size.height / 2);
    path.lineTo(size.width / 2, size.height +20);
    path.lineTo(20, size.height +20);
    path.lineTo(20, size.height / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>true;
  
}