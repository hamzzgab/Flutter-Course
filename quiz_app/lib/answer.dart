import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Value has to be a function
  final Function selectHandler;
  final String answerText;

  //Constructor storing the function
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          // Using the function
          onPressed: selectHandler,
        ));
  }
}
