import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Map> toDo = [
    {'Title': "Title 1", 'Description': "This is Description for Title 1"},
    {'Title': "Title 2", 'Description': "This is Description for Title 2"},
    {'Title': "Title 3", 'Description': "This is Description for Title 3"},
    {'Title': "Title 4", 'Description': "This is Description for Title 4"},
    {'Title': "Title 5", 'Description': "This is Description for Title 5"},
  ];
  List<Color> containerColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "To-do list",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: containerColor[index % containerColor.length]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.white),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/svg/imagelogo.svg",
                                height: 30,
                                width: 30,
                                //fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                toDo[index % toDo.length]['Title'],
                                style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                )),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                toDo[index % toDo.length]['Description'],
                                style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "10 July 2023",
                            style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit_outlined,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.delete_outline,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
