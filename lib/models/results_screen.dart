import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("YOU HAVE ANSWERED ALL THE QUESTIONS!"),
            SizedBox(height: 25),
            Text("List of ANSWERS AND QUESTIONS...."),
            SizedBox(height: 25),
            TextButton(onPressed: () {}, child: Text("Restart")),
          ],
        ),
      ),
    );
  }
}
