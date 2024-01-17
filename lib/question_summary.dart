
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  bool returnCorrectAnswer(String value1, String value2) {
    if (value1 == value2) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: summaryData.map((data) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (data['user_answer'] as String ==
                        data['correct_answer'] as String) ...[
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Text(
                          '${(data['question_index'] as int) + 1}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ] else ...[
                      CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        child: Text(
                          '${(data['question_index'] as int) + 1}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          Text(data['questions'] as String,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.pacifico(
                                  color: Colors.white, fontSize: 20)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(data['user_answer'] as String,
                              style: GoogleFonts.pacifico(
                                  color: Colors.cyanAccent, fontSize: 15)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(data['correct_answer'] as String,
                              style: GoogleFonts.pacifico(
                                  color: Colors.lightBlue, fontSize: 15)),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ))
                  ],
                );
              }).toList(),
            )),
      ),
    );
  }
}
