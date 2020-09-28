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

  static const _questions = const [
    const {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Red', 'Green', 'Orange', 'Black']
    },
    const {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Cat', 'Dog', 'fish', 'Rabbit']
    },
    const {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': ['Jhon', 'Jenny', 'James', 'Jolene']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first app')),
      backgroundColor: Colors.white,
      body: _questionIndex < _questions.length
          ? Column(children: <Widget>[
              Question(
                  questionText: _questions[_questionIndex]['questionText']),
              ...(_questions[_questionIndex]['answers'] as List<String>)
                  .map((answerText) => Answer(answerQuestion, answerText)),
            ])
          : Column(
              children: <Widget>[
                Question(questionText: 'You did it!'),
                Answer(() => setState(() => _questionIndex = 0), 'Try Again')
              ],
            ),
    ));
  }

  void answerQuestion() {
    setState(() => _questionIndex++);
  }
}
