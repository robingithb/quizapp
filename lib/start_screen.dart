import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 200,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter with fun way",
            style: TextStyle(
                color: Color.fromARGB(255, 219, 202, 247), fontSize: 20),
          ),
        ],
      ),
    );
  }
}
