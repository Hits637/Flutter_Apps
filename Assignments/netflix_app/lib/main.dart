import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "NETFLIX",
            style: TextStyle(
              color: Colors.red,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Action Movies",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                                color: Colors.red,
                                padding: const EdgeInsets.all(5),
                                height: 300,
                                width: 200,
                                child: Image.network(
                                    "https://i.pinimg.com/736x/dd/c7/4e/ddc74e8725a230f6881df493ccc1e8f8.jpg")),
                            Container(
                                color: Colors.red,
                                padding: const EdgeInsets.all(5),
                                height: 300,
                                width: 200,
                                child: Image.network(
                                    "https://i.redd.it/k4tlkcuipfr41.jpg")),
                            Container(
                                padding: const EdgeInsets.all(5),
                                height: 300,
                                width: 200,
                                color: Colors.red,
                                child: Image.network(
                                    "https://i.pinimg.com/736x/dd/c7/4e/ddc74e8725a230f6881df493ccc1e8f8.jpg")),
                            Container(
                                padding: const EdgeInsets.all(5),
                                height: 300,
                                width: 200,
                                color: Colors.red,
                                child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX2USWTViRkjFlab_4vwFWqXPSuNAGnEpslQ&s")),
                          ],
                        )),
                  ]);
            }),
      ),
    );
  }
}
