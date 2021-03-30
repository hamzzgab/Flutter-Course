import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Value has to be a function
  final Function selectHandler;

  //Constructor storing the function
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Answer 1'),
          // Using the function
          onPressed: selectHandler,
        ));
  }
}
