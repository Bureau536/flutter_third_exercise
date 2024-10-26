import 'package:flutter/material.dart';
import 'package:flutter_third_exercise/questions_summary/questions_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  final int index;
  final String question;
  final String userAnswer;
  final String correctAnswer;
  const SummaryItem({
    super.key,
    required this.index,
    required this.question,
    required this.userAnswer,
    required this.correctAnswer,
  });

  bool get isCorrect => userAnswer == correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionsIdentifier(
            index: index,
            isCorrect: isCorrect,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 213, 179, 250),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                if (!isCorrect)
                  Text(
                    userAnswer,
                    style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 202, 126, 126),
                    ),
                  ),
                Text(
                  correctAnswer,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 151, 180, 145),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
