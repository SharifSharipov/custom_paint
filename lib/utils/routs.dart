import 'package:custom_paint/screens/santa_claus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/example0.dart';
import '../screens/example2.dart';
import '../screens/example5.dart';
import '../screens/example6.dart';
import '../screens/example7.dart';
import '../screens/example8.dart';
import '../screens/example9.dart';
import '../screens/example_flag.dart';
import '../screens/exmaple1.dart';
import '../screens/exmaple3.dart';
import '../screens/exmaple4.dart';
import '../screens/home_screen.dart';
import 'constansts.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case example0Route:
        return MaterialPageRoute(builder: (_)=>Exmaple0());
      case example1Route:
        return MaterialPageRoute(builder: (_)=>Example1());
      case example2Route:
        return MaterialPageRoute(builder: (_)=>Example2());
      case example3Route:
        return MaterialPageRoute(builder: (_)=>Example3());
      case example4Route:
        return MaterialPageRoute(builder: (_)=>Example4());
      case example5Route:
        return MaterialPageRoute(builder: (_)=>Example5());
      case example6Route:
        return MaterialPageRoute(builder: (_)=>Example6());
      case example7Route:
        return MaterialPageRoute(builder: (_)=>Example7());
      case example8Route:
        return MaterialPageRoute(builder: (_)=>Example8());
      case example9Route:
        return MaterialPageRoute(builder: (_)=>Example9());
      case example10Route:
        return MaterialPageRoute(builder: (_)=> Exampleflag());
      case example11Route:
        return MaterialPageRoute(builder: (_)=> SantaClaus ());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}
