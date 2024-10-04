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
          title: const Text("Listview Builder"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Text(
            "Index: $index",
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          );
        }),
      ),
    );
  }
}
