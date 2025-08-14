import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startTheQuiz, {super.key});

  final void Function() startTheQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/logo2.png'),
          const SizedBox(height: 20),
          const Text(
            'LEARN FLUTTER AND DART WITH QUIZLY',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),

          ElevatedButton.icon(
            onPressed: startTheQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent.shade700,
              textStyle: const TextStyle(fontSize: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            icon: const Icon(
              Icons.arrow_circle_right_rounded,
              size: 24,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
