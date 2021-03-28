# quiz_app
- To first run the app use `flutter run`
- every flutter app is a widget
- widgets contain other widgets

1. [Creating Normal Hello App]#-creating-normal-hello-app-🍍

# Creating Normal Hello App 🍍
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

# Building a Widget Tree 🌲
![image](https://user-images.githubusercontent.com/47095611/112750279-5f0e7d80-8fe5-11eb-8e78-2391a9aaf85a.png)

`appBar:` is for the top title
  - `AppBar()` for the contents inside it
  - `title: Text()`<br>

```
return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is my default text! '),
      ),
    );
```

`body:` is for the contents inside it
  - Cannot add more widgets inside a body
  - List is a group of data 
  - `<Widget>[]` is a group of widgets
  - `RaisedButton()` or `ElevatedButton()` either of them can be used
  

```
body: Column(
          children: <Widget>[
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
          ],
        ),
  ```
