import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  get turns => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.blue.shade100, // Border color
          width: 5, // Border width
        ),
        color: Colors.blue.shade200, // background color
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade900.withValues(),
            blurRadius: 20,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: SizedBox(
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
                        Text(
                          (data['question'] as String),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 90, 40, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Selected Answer: ${(data['chosen_answer'] as String)}",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 13, 71, 161),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Correct Answer: ${(data['correct_answer'] as String)}",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 27, 94, 32),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
