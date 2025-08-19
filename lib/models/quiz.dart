import 'package:flutter/material.dart';
import 'package:quizly/data/questions.dart';
import 'package:quizly/models/custom_app_bar.dart';
import 'package:quizly/models/questions_screen.dart';
import 'package:quizly/models/start_screen.dart';
import 'package:quizly/models/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  final List<String> _selectedAnswers = [];

  void restartQuiz() {
    setState(() {
      _selectedAnswers.clear();
      activeScreen = 'start-screen';
    });
  }

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == allQuestions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: _selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: const CustomAppBar(),

        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 7, 77, 198),
                Color.fromARGB(255, 61, 168, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
