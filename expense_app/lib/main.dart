import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: , top to bottom (start center end) (spaceBetween spaceAround spaceEvenly)
        mainAxisAlignment: MainAxisAlignment.center,

        // crossAxisAlignment: ,left to right (start center end) (stretc)
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Chart!'),
            ),
          ),
          Card(
            color: Colors.red,
            child: Text('List of Tx!'),
          ),
        ],
      ),
    );
  }
}

// Row
// crossAxisAlignment: , top to bottom
// mainAxisAlignment: , left to right
