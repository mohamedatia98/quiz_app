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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The questions !!'),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Answer 1')),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
