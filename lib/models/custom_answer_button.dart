import 'package:flutter/material.dart';

class CustomAnswerButton extends StatelessWidget {
  const CustomAnswerButton({
    super.key,
    required this.answerText,
    required this.ifPressed,
  });

  final String answerText;
  final void Function() ifPressed;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: ifPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orangeAccent.shade400,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.directional(
            bottomEnd: Radius.circular(20),
            topStart: Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
