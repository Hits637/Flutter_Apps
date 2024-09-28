import "package:flutter/material.dart";

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
          title: const Text("Tiranga"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        
        body:Center(
          
          child:Row(
            
            mainAxisAlignment:MainAxisAlignment.center,
            
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  Container(
                  width: 5,
                  height:400,
                  color:Colors.black,
                  
                  ),
                  
                  
                ],
                  
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                  width: 350,
                  height:50,
                  color:Colors.orange,
                  ),

                  Container(
                  width: 350,
                  height:50,
                  color:Colors.white,
                  child:Image.network("https://photomedia.in/wp-content/uploads/2023/07/ashok-chakra-1024x1024.png"),
                  ),

                  Container(
                    width: 350,
                  height:50,
                  color:Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
