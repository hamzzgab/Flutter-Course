# quiz_app
- To first run the app use `flutter run`
- every flutter app is a widget
- widgets contain other widgets

1. [Creating Normal Hello App 🍍](#creating-normal-hello-app-)
2. [Building a Widget Tree 🌲](#building-a-widget-tree-)

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

![image](https://user-images.githubusercontent.com/47095611/112751682-de537f80-8fec-11eb-8f9c-c74288b2c93e.png)


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
  # Connecting Fuctions & Buttons
  
  ![image](https://user-images.githubusercontent.com/47095611/112752088-ec0a0480-8fee-11eb-9141-d7a84483a716.png)

  
  ![image](https://user-images.githubusercontent.com/47095611/112752080-e2809c80-8fee-11eb-9702-59c950b532ed.png)

```
class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen!');
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
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
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
      ),
    );
  }
}
```
All The functions that work inside the class should be in the class *stand alone classes*
```
void answerQuestion() {
    print('Answer Chosen!');
  }
```
:heavy_check_mark: `onPressed: answerQuestion` 

:x: `onPressed: answerQuestion()` 

because it is not executing the function
```
RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
```

**Anonymous Functions**
```
onPressed: () => print('Answer 2 chosen!'),
```
```
onPressed: () {
                print('Answer 3 Chosen!');
              },
```
**Accessing the elements inside the list**
```
children: <Widget>[
            Text(questions[0]),
```
```
children: <Widget>[
            Text(questions.elementAt(0)),
```
**Stateless vs Stateful**
| Stateless | Stateful |
|-----|-----|
| Input Data :arrow_right: Widget :arrow_right: Renders UI | Input Data :arrow_right: Widget + Internal State :arrow_right: Renders UI |
| Data can change(externally) | Data can change(externally) |
| Gets (re)-rendered when input data changes | Gets (re)-rendered when input data or local State changes |

###Converting stateless to Statefull
1. First we create a class 
   - Returns `MyAppState()` so this is connected to the main class
```
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
```
2. The main class where all the code is
   - `<MyApp>` is a pointer to the MyApp class which is a stateful widget
```
class MyAppState extends State<MyApp> {
```
3. Functions where things have to be changed are written
   - `seState()` allows only the specific values that have to be changed to change rather than the app waiting on all the values to change which would cause it to slow down
```
void answerQuestion() {
    setState(() {
      questionIndex++;
    });   
  }
```

