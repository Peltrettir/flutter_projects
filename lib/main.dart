import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Red', 'Green', 'Orange', 'Black']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Cat', 'Dog', 'fish', 'Rabbit']
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': ['Jhon', 'Jenny', 'James', 'Jolene']
    },
  ];

  List<Widget> _answers = [];

  _MyAppState() {
    _answers = [
      Question(
        questionText: _questions[_questionIndex]['questionText'],
      )
    ];
    _updateAnswers();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first app')),
      backgroundColor: Colors.white,
      body: Column(children: _answers),
    ));
  }

  void answerQuestion() {
    setState(() => _questionIndex = (_questionIndex + 1) % 3);
    print(_questionIndex);
  }

  void _updateAnswers() {
    for (var answer in _questions[_questionIndex]['answers']) {
      _answers.add(Answer(answerQuestion, answer as String));
    }
  }
}
