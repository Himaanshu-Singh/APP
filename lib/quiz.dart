import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:helloapp/question.dart';

import 'answer.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function answerquestion;

  quiz(
      {required this.questions,
      required this.answerquestion,
      required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]['questionText'] as String,
        ),
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerquestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
