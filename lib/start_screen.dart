import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          /*Opacity(
            opacity: 0.4,
            child: Image.asset('assets/images/quiz-logo.png', width: 300),
          ),*/
          const SizedBox(height: 50),
          Text(
            "Learn The Flutter!!!",
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right),
            label: Text(
              "Start Quiz",
              textAlign: TextAlign.center,
              style: GoogleFonts.pacifico(
                  color: Colors.white, fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
