import 'package:custom_paint/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get homeRoute => null;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(400,900),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        onGenerateRoute: MyRouter.generateRoute,
        initialRoute: homeRoute,
      );  },

    );
  }
}


