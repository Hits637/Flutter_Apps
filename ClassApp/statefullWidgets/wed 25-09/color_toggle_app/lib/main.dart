import "package:flutter/material.dart";

void main() {
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget {
  const ToggleColor({super.key});

  @override
  State createState() => _ToggleColorState();
}

class _ToggleColorState extends State {
  bool value = true;
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Toggle App"),
            centerTitle: true,
            backgroundColor: value? Colors.cyan:Colors.blueGrey,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:[ 
                
                Container(
                height: 150,
                width: 150,
                color: value ? Colors.red:Colors.black,
              ),
                Container(
                  height:150,
                  width:150,
                  color: value ? Colors.yellow:Colors.pink,
                ),
              ]
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (value == true) {
                value = false;
              } else {
                value = true;
              }
              setState(() {});
            },
            backgroundColor: Colors.cyan,
            child: const Text("toggle"),
          ),
        ),
      );
}
