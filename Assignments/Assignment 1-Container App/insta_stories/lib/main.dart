import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Insta",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("Insta Stories"),
        backgroundColor: Colors.blue,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape:BoxShape.circle,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape:BoxShape.circle,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape:BoxShape.circle,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape:BoxShape.circle,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.purple,
                shape:BoxShape.circle,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.cyan,
                shape:BoxShape.circle,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                shape:BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
