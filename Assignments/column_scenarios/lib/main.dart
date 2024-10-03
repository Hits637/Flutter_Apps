import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerPosition(),
    );
  }
}
class ContainerPosition extends StatefulWidget {
  const ContainerPosition({super.key});

  @override
  State createState() => _ContainerPosition();
}
class _ContainerPosition extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            //combination1
            /*mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,*/

            //combination2
            /* mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,*/

            //combination3
            /* mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,*/

            //combination4
            /* mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,*/

            //combination5
            /* mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,*/

            //combination6
            /* mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,*/

            //combination7
            /* mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,*/

            //combination8
            /* mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,*/

            //combination9
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),
            ],
          )),
    );
  }
}
