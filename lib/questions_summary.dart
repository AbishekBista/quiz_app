import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((item) {
          return Container(
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: item['user_answer'] == item['correct_answer']
                        ? const Color.fromARGB(255, 224, 28, 246)
                        : const Color.fromARGB(255, 28, 195, 246),
                  ),
                  child: Text('${(item['question_index'] as int) + 1}',
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['question'] as String,
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        item['user_answer'] as String,
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 224, 28, 246),
                        ),
                      ),
                      Text(
                        item['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 28, 195, 246),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList()),
      ),
    );
  }
}
