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
    // Map is a collection of key value pairs
    // key could be a number or string
    // Shorthand way to make it long way is using Map()
    var questions = [
      {
        'questionText': "What's your fav color? ",
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': "What's your fav animal? ",
        'answers': ['Dog', 'Cat', 'Lion', 'Zebra']
      },
      {
        'questionText': "Who's your fav instructor? ",
        'answers': ['Hamzz', 'Hamzz', 'Hamzz', 'Hamzz']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            // calls the question file
            Question(questions[_questionIndex]['questionText']),

            // Returns a new list
            // Tell dart answers will be a list of strings
            // ... adds a spread operator
            // take a list and they pull all the values out of the list
            // and add them to the surrounding list
            // as individual values
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              // returns an answer widget

              return Answer(_answerQuestion, answer);
            }).toList()
            // generates a new list
          ],
        ),
      ),
    );
  }
}
