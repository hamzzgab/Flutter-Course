# quiz_app

A new Flutter project.

## Getting Started
- To first run the app use "**flutter run**"
- every flutter app is a widget
- widgets contain other widgets

# main.dart 
## Creating Normal Hello App
![image](https://user-images.githubusercontent.com/47095611/112745594-41322000-8fc7-11eb-9159-fc711cecb4f4.png)
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
