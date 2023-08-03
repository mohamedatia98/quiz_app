import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentquestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentquestion.text),
          const SizedBox(height: 25),
          // this called Spreading and so fast process than hard code !
          ...currentquestion.answers.map((answer) {
            return AnswerButton(onTap: () {}, text: answer);
          }),
        ],
      ),
    );
  }
}
