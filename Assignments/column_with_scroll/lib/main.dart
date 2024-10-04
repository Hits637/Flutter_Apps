import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column With Scroll",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://assets-prd.ignimgs.com/2022/08/17/top25animecharacters-blogroll-1660777571580.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://wallpapers.com/images/featured/anime-scenery-ahd1eqpvwq8aoofp.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://cdn.oneesports.gg/cdn-data/2023/01/Anime_DemonSlayer_AllHashira_2.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://cdn.oneesports.gg/cdn-data/2024/01/Anime_DemonSlayer_Giyu.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://assets-prd.ignimgs.com/2022/08/17/top25animecharacters-blogroll-1660777571580.jpg"),
              const SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://www.animationmagazine.net/wordpress/wp-content/uploads/Jujutsu-Kaisen-6.jpg"),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
