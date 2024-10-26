import 'package:flutter/material.dart';
import 'package:flutter_third_exercise/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, dynamic>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(
              index: data['question_index'],
              question: data['question'],
              userAnswer: data['user_answer'],
              correctAnswer: data['correct_answer'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
