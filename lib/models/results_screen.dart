import 'package:flutter/material.dart';
import 'package:quizly/data/questions.dart';
import 'package:quizly/models/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': allQuestions[i].question,
        'chosen_answer': chosenAnswers[i],
        'correct_answer': allQuestions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final totalQuestions = allQuestions.length;
    final totalCorrect = summaryData.where((data) {
      return data['correct_answer'] == data['chosen_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "YOU HAVE CORRECTLY ANSWERED $totalCorrect OUT OF $totalQuestions QUESTIONS!",
              style: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 25),
            QuestionsSummary(summaryData),
            const SizedBox(height: 25),
            TextButton(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue.shade900,
                side: BorderSide(
                  color: Colors.blue.shade100,
                  width: 5,
                ),
                shadowColor: Colors.blue.shade900,
                elevation: 5,
                backgroundColor: Colors.blue.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              child: const Text(
                "Restart",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
