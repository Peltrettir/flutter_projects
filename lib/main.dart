import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void nextQuestion() {
    questionIndex++;
  }

  var questions = [
    'What\'s yout favourite color?',
    'What\'s yout favourite animal?',
  ];

  void answerQuestion() {
    print('Question Answered!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first app')),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Text('The question!'),
          RaisedButton(
              child: Text(questions.elementAt(0)), onPressed: answerQuestion),
          RaisedButton(
              child: Text(questions[1]),
              onPressed: () {
                print('Answer 2');
              }),
          RaisedButton(
              child: Text(questions[questionIndex]),
              onPressed: () => setState(() => questionIndex++)),
        ],
      ),
    ));
  }
}
