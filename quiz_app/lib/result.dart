import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Result extends StatelessWidget {
  final Function resultCallback;
  final int finalScore;

  String get resultPhrase {
    return finalScore > 21 ? 'High score' : 'Low score';
  }

  Result(this.resultCallback, this.finalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          textColor: Colors.blue,
          onPressed: resultCallback,
        )
      ],
    );
  }
}
