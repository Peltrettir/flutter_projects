import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;

  static const _questions = const [
    const {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 8},
        {'text': 'Orange', 'score': 6},
        {'text': 'Black', 'score': 4}
      ]
    },
    const {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 8},
        {'text': 'Fish', 'score': 6},
        {'text': 'Rabbit', 'score': 4}
      ]
    },
    const {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'John', 'score': 10},
        {'text': 'Jane', 'score': 8},
        {'text': 'Jack', 'score': 6},
        {'text': 'Jolene', 'score': 4}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first app')),
      backgroundColor: Colors.white,
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerCallback: answerQuestion)
          : Result(resetIndex, _totalScore),
    ));
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void resetIndex() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}
