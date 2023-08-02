import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

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
    return const Text('hello Questions Screen');
  }
}
