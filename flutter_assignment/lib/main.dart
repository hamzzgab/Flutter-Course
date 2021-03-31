import 'package:flutter/material.dart';
import './text_control.dart';
import './text_file.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _differentTexts = const [
    'I am the first text',
    'Mera wala second hai',
    'Mera saboon slow hai'
  ];

  int textIndex = 0;

  void _changeIndex() {
    setState(() {
      textIndex++;
    });

    if (textIndex == _differentTexts.length) {
      textIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Bruh'),
          ),
          body: Column(
            children: [
              TextFile(_differentTexts, textIndex),
              TextControl(_changeIndex)
            ],
          )),
    );
  }
}
