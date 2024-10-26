import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier({
    super.key,
    required this.index,
    required this.isCorrect,
  });

  final int index;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      margin: const EdgeInsets.only(right: 10, top: 5),
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 102, 231, 160)
            : const Color.fromARGB(255, 207, 79, 128),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          ((index) + 1).toString(),
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
