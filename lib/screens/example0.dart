import 'package:flutter/material.dart';
class Exmaple0 extends StatefulWidget {
  const Exmaple0({super.key});

  @override
  State<Exmaple0> createState() => _Exmaple0State();
}

class _Exmaple0State extends State<Exmaple0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Builder"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext contex,BoxConstraints  contraints){
          if(contraints.maxWidth>450){
            return Center(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
            );
          } else{
            return Center(
              child: Row(
                children:<Widget> [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.yellow,
                  ),
                ],
              ),
            );
          }
        },
      )
    );
  }
}
