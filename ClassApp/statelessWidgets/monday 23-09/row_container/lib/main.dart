import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Row Container"),
          centerTitle:true,
          backgroundColor:Colors.cyan,
        ),

        body:Center(
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:[
              
          
              Container(
                height:100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width:100,
                height:100,
                color: Colors.red,
              ),
            ]
          ),
        ),
      
      
      
      ),

    );
  }
}
