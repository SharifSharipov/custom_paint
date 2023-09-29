import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom painter:drawCricle"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.deepPurple,
          child: CustomPaint(
            size: const Size(300, 300),
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
    print(size.width);
    print(size.height);

    var paint1 = Paint()..color = Colors.red;
    canvas.drawRect( Offset(size.height/2, size.width/2) & const Size(150, 150), paint1);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
