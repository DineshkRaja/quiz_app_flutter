import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                backgroundColor: const Color.fromARGB(255, 0, 8, 75),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
            child: Text(
              answerText,
              textAlign: TextAlign.center,
              style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            )));
  }
}
