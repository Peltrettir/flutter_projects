import 'package:flutter/material.dart';

import 'my_text.dart';
import 'my_text_control.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  static const _texts = const [
    'First text',
    'Second text',
    'Third text',
    'Fourth text'
  ];

  var _textIndex = 0;
  String _currentText = _texts[0];

  String _changeText() {
    _textIndex = (_textIndex + 1) % _texts.length;
    setState(() => _currentText = _texts[_textIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My app title'),
            backgroundColor: Colors.orange,
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              MyText(_currentText),
              MyTextControl(_changeText)
            ],
          )),
    );
  }
}
