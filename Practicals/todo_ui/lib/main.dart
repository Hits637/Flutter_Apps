import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return Scaffold(
      appBar: AppBar(

        title: const Text("To-do list",
        style: TextStyle(
          fontSize:26,
          fontWeight: FontWeight.w700,
        ),),
        backgroundColor: const Color.fromARGB(1,2,167, 177),
        

      ),
      body:ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          
        },
      ),

      


    );
  }
}