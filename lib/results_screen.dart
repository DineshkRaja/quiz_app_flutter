import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_flutter/data/questions.dart';
import 'package:sample_flutter/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;


  List<Map<String, Object>> get getSummaryData {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'questions': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {

    final correctNumberOfQuestions = getSummaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'You answered $correctNumberOfQuestions out of ${questions.length} questions correctly!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pacifico(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(height: 20),
                QuestionSummary(summaryData: getSummaryData),
                const SizedBox(height: 30),
                FilledButton.icon(
                    onPressed: restartQuiz,
                    icon: const Icon(Icons.restart_alt, color: Colors.white,),
                    label: Text(
                      'Restart the Questions',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.pacifico(color: Colors.white, fontSize: 20),
                    ))
              ],
            )));
  }
}
