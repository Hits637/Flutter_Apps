import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(color: Colors.red, width: 1)),
          ),
        ),
      ),
    );
  }
}
