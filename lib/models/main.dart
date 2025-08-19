import 'package:flutter/material.dart';
import 'package:quizly/models/quiz.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quizly',
      home: Quiz(),
    );
  }
}
