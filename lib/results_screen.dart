import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summarydata = getSummaryData();
    final numOfallEquestions = questions.length;
    final numOfcorrectedanswers = summarydata
        .where((data) => data['user_answer'] == data['correct_answer'])         // arrow function type added
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You Answered $numOfcorrectedanswers of $numOfallEquestions Answers Correct !'),
            const SizedBox(height: 25),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 25),
            TextButton(onPressed: () {}, child: const Text('restart')),
          ],
        ),
      ),
    );
  }
}
