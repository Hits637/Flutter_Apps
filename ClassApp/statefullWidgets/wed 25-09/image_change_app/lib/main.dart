import "package:flutter/material.dart";

void main() {
  runApp(const ChangeImage());
}

class ChangeImage extends StatefulWidget {
  const ChangeImage({super.key});

  @override
  State createState() => _ChangeImageState();
}

class _ChangeImageState extends State {
  int index = 0;
  List playerList = ["https://e0.pxfuel.com/wallpapers/488/925/desktop-wallpaper-rohit-sharma-indian-cricket-player-thumbnail.jpg", 
                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbU6_Mu-4uOXzEn1HCpHuC0WrcqsbOiXUNJw&s",
                     "https://www.india.com/wp-content/uploads/2023/11/MixCollage-17-Nov-2023-06-27-PM-5746.jpg",
                     "https://c.ndtvimg.com/2020-07/m7opt04g_ms-dhoni-afp_625x300_06_July_20.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605",
                     "https://i.pinimg.com/736x/35/8a/ba/358aba06d2eb9117e7db721f39805c10.jpg",
                     "https://w0.peakpx.com/wallpaper/835/169/HD-wallpaper-cricket-match-virat-kohli-cricketer-indian-cricketer-thumbnail.jpg",
                     "https://www.isportindia.com//storage/app/public/news/1704348848-qZXth.jpg"
                     
                     ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Changer"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            width: 200,
            child: Image.network(playerList[index]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (index < playerList.length - 1) {
              index++;
            } else {
              index = 0;
            }
            setState(() {});
          },
        ),
      ),
    );
  }
}
