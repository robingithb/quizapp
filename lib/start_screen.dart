//import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /*Opacity(
            opacity: 0.4,  //it is one method is used to traansperency
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 200,
            ),
          ),
          */
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
            color: const Color.fromARGB(
                127, 243, 243, 243), //another method in the coloring
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter with fun way",
            style: TextStyle(
                color: Color.fromARGB(255, 219, 202, 247), fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
