import 'package:first_assigment_app/my_text.dart';
import 'package:flutter/material.dart';

class MyTextControl extends StatelessWidget {
  final Function callback;

  MyTextControl(this.callback);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Text(
            'Change Text',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPressed: callback,
          color: Colors.orange),
    );
  }
}
