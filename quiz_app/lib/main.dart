import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    // print('Answer Chosen!');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["What's your fav color", "What's your fav animal"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            // calls the question file
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
