import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerCallback;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerCallback});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questionText: questions[questionIndex]['questionText']),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map(
          (answer) => Answer(
              answerCallback: () => answerCallback(answer['score']),
              answerText: answer['text'])),
    ]);
  }
}
