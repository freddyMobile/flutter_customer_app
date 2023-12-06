import 'package:flutter/material.dart';
import '../providers/question_fetch.dart';
import 'package:provider/provider.dart';

class AskedQuestions extends StatelessWidget {
  final int i;
  const AskedQuestions({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    var fetchdedQuestion = Provider.of<QuestionFetch>(context);
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              '${i + 1}/${fetchdedQuestion.questions.length}',
              style: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
              fetchdedQuestion.questions[i].title,
              style:
                  const TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
