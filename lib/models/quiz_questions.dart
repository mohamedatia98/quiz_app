import 'package:flutter/material.dart';

class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

// map list does not override the list
// but shuffle does

  List<String> getshuffleList() {
    final list = List.of(answers);
    list.shuffle();
    return list;
  }
}
