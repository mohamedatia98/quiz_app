import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedScreen});

  final void Function(String answer) onSelectedScreen;
  @override
  State<QuestionsScreen> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<QuestionsScreen> {
  var currentIndexquestion = 0;

  void answerquetionchange(String answer) {
    widget.onSelectedScreen(
        answer); // by this way i can get function from majopr class to state class
    setState(() {
      // if (currentIndexquestion < 5) {
      //   currentIndexquestion++;}
      currentIndexquestion++;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[currentIndexquestion];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            // this called Spreading and so fast process than hard code !
            ...currentquestion.getshuffleList().map(
              (answer) {
                return AnswerButton(
                    onTap: () {
                      answerquetionchange(answer);
                    },
                    text: answer);
              },
            ),
          ],
        ),
      ),
    );
  }
}


// last video is 25