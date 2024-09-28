import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              
              ),
            
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.cyan,
              
              ),
            ],
          ),
        ),
      ),
    );
  }
}
