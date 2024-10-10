import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Text("AppBar"),
              Spacer(),
              Icon(Icons.home_filled),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.saved_search)
            ],
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
