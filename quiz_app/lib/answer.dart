import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerCallback;
  final String answerText;

  Answer({this.answerCallback, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: answerCallback,
      ),
    );
  }
}
