# quiz_app

A new Flutter project.

## Getting Started
- To first run the app use `flutter run`
- every flutter app is a widget
- widgets contain other widgets

# main.dart
## Creating Normal Hello App
![image](https://user-images.githubusercontent.com/47095611/112745594-41322000-8fc7-11eb-9159-fc711cecb4f4.png)

For using the built in widgets
So we don't have to make our own widgets
```
import 'package:flutter/material.dart';
```

Runs the flutter app
Draws something onto the Screen
So we have to pass `MyApp()`
```
void main() {
  runApp(MyApp());
}
```

*Need to memorize this*
Automatically done by flutter
Needs to return a widget hence Widget
Need to return `MaterialApp()` to render the app, also takes named arguments
`home:` is the core widget where `Text('Hello!')` is where the text that you want to display gets printed

```
class MyApp extends StatelessWidget {  
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello!'));
  }
}
```
