import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title = 'QUIZLY'});

  final String title;

  @override
  Size get preferredSize {
    const Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            letterSpacing: 1.5,
            color: Colors.white,
          ),
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
      elevation: 32,
      actions: [
        IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                backgroundColor: Colors.blue.shade100,
                content: const Text(
                  '<< Quizly is a fun 10 MCQs Flutter quiz app which is build to learn flutter. Please examine the code properly for better understanding.>>',
                  style: TextStyle(
                    color: Color.fromARGB(255, 14, 71, 158),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(),
                    child: const Text('Ok'),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
