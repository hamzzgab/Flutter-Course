# quiz_app

A new Flutter project.

## Getting Started
- To first run the app use "**flutter run**"
- every flutter app is a widget
- widgets contain other widgets

# main.dart 
```
import 'package:flutter/material.dart';
```
- For using the built in widgets
- So we don't have to make our own widgets 

```
void main() {
  runApp(MyApp());
}
```
- runs the flutter app
- draws something onto the Screen
- so we have to pass MyApp() 

```
class MyApp extends StatelessWidget {  
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello!'));
  }
}
```
- need to memorize this
- automatically done by flutter
- needs to return a widget hence Widget
- need to return MaterialApp() to render the app, also takes named arguments, home: is the core widget
