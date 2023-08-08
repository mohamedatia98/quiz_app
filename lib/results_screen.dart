import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen({super.key , required this.chosenAnswers});

  final List<String> chosenAnswers;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('hola'),
            const SizedBox(height: 25),
            const Text('hola'),
            const SizedBox(height: 25),
            TextButton(onPressed: () {}, child: const Text('restart')),
          ],
        ),
      ),
    );
  }
}
