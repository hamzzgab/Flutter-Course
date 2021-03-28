# quiz_app

A new Flutter project.

## Getting Started
- To first run the app use `flutter run`
- every flutter app is a widget
- widgets contain other widgets

# main.dart
## Creating Normal Hello App 🍍
![image](https://user-images.githubusercontent.com/47095611/112745594-41322000-8fc7-11eb-9159-fc711cecb4f4.png)

For using the built in widgets
So we don't have to make our own widgets
```
import 'package:flutter/material.dart';
```

Runs the flutter app<br>
Draws something onto the Screen<br>
So we have to pass `MyApp()`<br>
The parenthesis instantiates the class
```
void main() {
  runApp(MyApp());
}
```
For **one expression** you can use this<br>
```
void main() => runApp(MyApp());
```

*Need to memorize this* (Automatically done by flutter) <br>
- returns a widget hence Widget <br>
- returns `MaterialApp()` to render the app which takes named arguments
  1. `home:` the core widget
  2. `Text('Hello!')` where that you want to display gets printed
- `@override` is a decorater provided by Flutter
  - makes the code clear and clear
  - overriding the build method
```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello!'));
  }
}

```
