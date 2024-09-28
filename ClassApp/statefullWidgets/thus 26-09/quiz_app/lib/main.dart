import "package:flutter/material.dart";


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    ));
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List allQue = [
    {
      "Question": "Who is the Founder of Microsoft?",
      "Options": ["Steve Jobs", "Bill Gates", "Elon Musk", "Mark Zuckerberg"],
      "Ans": 1,
    },
    {
      "Question": "Who is the Founder of Apple ?",
      "Options": ["Elon Musk", "Bill Gates", "Steve Jobs", "Larry Page"],
      "Ans": 2,
    },
    {
      "Question": "Who is the Founder of C2W?",
      "Options": ["Elon Musk", "Shahi Sir", "Larry Page", "Bill Gates"],
      "Ans": 1,
    },
    {
      "Question": "Who is the Founder of SpaceX ?",
      "Options": ["Elon Musk", "Bill Gates", "Lary Page", "Deepindar Goyal"],
      "Ans": 0,
    },
    {
      "Question": "Who is the Founder of Meta ?",
      "Options": ["Steve Jobs", "Bill Gates", "Elon Musk", "Mark Zuckerberg"],
      "Ans": 3,
    },
    {
      "Question": "Who is the Founder of Google ?",
      "Options": ["Larry Page", "Bill Gates", "Elon Musk", "Mark Zuckerberg"],
      "Ans": 0,
    },
  ];

  bool questionPage = true;
  
  int currentQueIndex = 0;
  int selectedAnsIndex = -1;
  int correctedAns = 0;

  int correctedAnsfun() {
    if (selectedAnsIndex == allQue[currentQueIndex]["Ans"]) {
      correctedAns++;
    }
    return correctedAns;
  }

  WidgetStatePropertyAll<Color?> colorChange(int answer) {
    if (selectedAnsIndex != -1) {
      if (answer == allQue[currentQueIndex]["Ans"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnsIndex == answer) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  Scaffold appPage() {
    if (questionPage) {
      return Scaffold(
        //backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                const SizedBox(width: 110),
                Text(
                  "Question: ${currentQueIndex + 1}/${allQue.length}",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            SizedBox(
              child: Text(
                "Q.${currentQueIndex + 1}.${allQue[currentQueIndex]["Question"]}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 60),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnsIndex == -1) {
                    selectedAnsIndex = 0;
                    setState(() {});
                    correctedAnsfun();
                  }
                },
                style: ButtonStyle(
                  backgroundColor: colorChange(0),
                ),
                child: Text(
                  allQue[currentQueIndex]["Options"][0],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnsIndex == -1) {
                    selectedAnsIndex = 1;
                    setState(() {});
                  }
                  correctedAnsfun();
                },
                style: ButtonStyle(
                  backgroundColor: colorChange(1),
                ),
                child: Text(
                  allQue[currentQueIndex]["Options"][1],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnsIndex == -1) {
                    selectedAnsIndex = 2;
                    setState(() {});
                  }
                  correctedAnsfun();
                },
                style: ButtonStyle(
                  backgroundColor: colorChange(2),
                ),
                child: Text(
                  allQue[currentQueIndex]["Options"][2],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnsIndex == -1) {
                    selectedAnsIndex = 3;
                    setState(() {});
                  }
                  correctedAnsfun();
                },
                style: ButtonStyle(
                  backgroundColor: colorChange(3),
                ),
                child: Text(
                  allQue[currentQueIndex]["Options"][3],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnsIndex != -1) {
              if (currentQueIndex < allQue.length - 1) {
                currentQueIndex++;
                selectedAnsIndex = -1;
              } else {
                questionPage = false;
              }
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  height: 200,
                  child: Image.network(
                      "https://img.freepik.com/premium-vector/champions-golden-cup-icon-symbol-victory-reward-prize-sports-trophy-logo_219687-132.jpg")),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Congratulation!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Your Score: $correctedAns/${allQue.length}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  currentQueIndex=0;
                  questionPage=true;
                  selectedAnsIndex=-1;
                  correctedAns=0;
                  setState(() {
                    
                  });
                },
                style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue),

                ),
                child:const Text(
                  "Retake test",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return appPage();
  }
}
