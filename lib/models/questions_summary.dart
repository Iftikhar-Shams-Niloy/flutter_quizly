import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});  
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.amber,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 90, 40, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    children: [
                      Text((data['question'] as String)),
                      Text(
                        "Selected Answer: ${(data['chosen_answer'] as String)}",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 20, 50, 110),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Correct Answer: ${(data['correct_answer'] as String)}",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 20, 95, 65),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
