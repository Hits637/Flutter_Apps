import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          title: const Text("Space Parameters"),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [

            ////////////////
            ///Space Around
            const Text("Space Around", style: TextStyle(fontSize: 18)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.orange,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            ///////////////
            ///Space Between
            const Text("Space Between", style: TextStyle(fontSize: 18)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            ///////////////////
            ///Space Evenly
            const Text("Space evenly", style: TextStyle(fontSize: 18)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.brown,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
