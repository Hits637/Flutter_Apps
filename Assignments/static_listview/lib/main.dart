import 'package:flutter/material.dart';

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
          title: const Text("ListView",
              style: TextStyle(
                color: Colors.red,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.black,
              )),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Leaf Picture",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Image.network(
                "https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg"),
            const Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.share_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 300,
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Night Sky",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Image.network(
                "https://www.nasa.gov/wp-content/uploads/2023/06/jwst-flickr-52259221868-30e1c78f0c-4k.jpg?w=2048"),
            const Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.share_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 300,
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Demon Slayer",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Image.network(
                "https://cf-img-a-in.tosshub.com/sites/visualstory/wp/2024/07/DemonSlayer_LPKizlJ.webp?size=*:900"),
            const Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.share_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 300,
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Leaf Picture",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            Image.network(
                "https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg"),
            const Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.share_rounded,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(
                  width: 300,
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 100,
                color: Colors.amber,
                child: const Text("Press me"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
