import 'package:flutter/material.dart';
import 'package:quizapp/questions_screen.dart';
//import 'package:flutter/widgets.dart';
import 'package:quizapp/start_screen.dart';

// ignore: must_be_immutable
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    //activeScreen = 'start-screen';
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
      //activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(145, 94, 7, 155),
                  Color.fromARGB(255, 54, 12, 126),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: activeScreen),
            //child: activescreen == 'start-screen' 
            // ? Startscreen(switchscreen)
            // : questionscreen()   this is the method using ternary and strings
      ),
    );
  }
}
