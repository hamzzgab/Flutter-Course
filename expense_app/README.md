# expense_app

# Understanding Column Alignment

`main.dart`
```
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
        children: [      
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('List of Tx!'),
            ),
          ),
          Card(
            child: Text('List of Tx!'),
          ),
        ],
      ),
    );
  }
}
```

Can do it both ways because it takes the width of the parent

Wrap stuff in a container to change with width 
```
Card(
  color: Colors.blue,
  child: Container(
    width: double.infinity,
    child: Text('CHART!'),
    ),
   elevation: 5,
   ),
```

```
Container(
  width: double.infinity,
  child: Card(
    color: Colors.blue,
    child: Text('List of Tx!'),
    ),
),
```
