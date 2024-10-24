import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          color: const Color.fromARGB(150, 255, 255, 255),
          height: 300,
          width: 300,
        ),
        const SizedBox(height: 30),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 24,
            color: const Color.fromARGB(255, 225, 177, 243),
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Color.fromARGB(255, 71, 44, 119)),
                textStyle: const TextStyle(
                  fontSize: 20,
                )),
            onPressed: startQuiz,
            icon: const Icon(Icons.start_rounded, size: 30),
            label: const Text('Start Quiz'))
      ]),
    );
  }
}
