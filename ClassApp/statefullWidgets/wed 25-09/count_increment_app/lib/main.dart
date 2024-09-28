import "package:flutter/material.dart";

void main() {
  runApp(const CountIncrement());
}

class CountIncrement extends StatefulWidget {
  const CountIncrement({super.key});

  @override
  State createState() {
    return _CounterIncrementState();
  }
}

class _CounterIncrementState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter app"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Text("$count"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
             count++;
             setState(() {});
          },
          
          backgroundColor:Colors.cyan, 
          child:const Icon(Icons.add),
        ),
      
      ),
    );
  }
}
