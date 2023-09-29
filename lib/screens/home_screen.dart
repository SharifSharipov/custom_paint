import 'package:flutter/material.dart';

import '../utils/constansts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> routeNames = [
    example0Route,
    example1Route,
    example2Route,
    example3Route,
    example4Route,
    example5Route,
    example6Route,
    example7Route,
    example8Route,
    example9Route,
    example10Route,
    example11Route,
    example12Route,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example "),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          ...List.generate(routeNames.length, (index) => ListTile(
            title: Text("Example \t${index}"),
            onTap: () {
              Navigator.pushNamed(context, routeNames[index]);
            },
          ))
        ],
      ),
    );
  }
}
