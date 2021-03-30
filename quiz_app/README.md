# quiz_app
- To first run the app use `flutter run`
- every flutter app is a widget
- widgets contain other widgets

1. [Creating Normal Hello App 🍍](#creating-normal-hello-app-)
2. [Building a Widget Tree 🌲](#building-a-widget-tree-)
3. [Connecting Functions & Buttons 🔗](#connecting-fuctions--buttons-)
    - [Anonymous Functions](#anonymous-functions)
    - [Accessing the elements inside the list](#accessing-the-elements-inside-the-list)
    - [Stateless vs Stateful](#stateless-vs-stateful)
    - [Converting stateless to Statefull](#converting-stateless-to-statefull)
4. [Widget from a new file 📁](#widget-from-a-new-file-)
    - [Styling & Layout](#styling--layout)
6. [Passing Callback Functions Around 🤙](#passing-callback-functions-around-)
7. [Mapping Lists To Widgets 🗺️](#mapping-lists-to-widgets-%EF%B8%8F)
8. ['if' Statements](#'if'-Statements)

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
  # Connecting Fuctions & Buttons 🔗
  
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

## Anonymous Functions
```
onPressed: () => print('Answer 2 chosen!'),
```
```
onPressed: () {
                print('Answer 3 Chosen!');
              },
```
## Accessing the elements inside the list
```
children: <Widget>[
            Text(questions[0]),
```
```
children: <Widget>[
            Text(questions.elementAt(0)),
```
## Stateless vs Stateful
| Stateless | Stateful |
|-----|-----|
| Input Data :arrow_right: Widget :arrow_right: Renders UI | Input Data :arrow_right: Widget + Internal State :arrow_right: Renders UI |
| Data can change(externally) | Data can change(externally) |
| Gets (re)-rendered when input data changes | Gets (re)-rendered when input data or local State changes |

## Converting stateless to Statefull
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
Private class
  - Can be only used inside the main.dart file
```
class _MyAppState extends State<MyApp> {
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

# Widget from a new file 📁
**question.dart**
```
import 'package:flutter/material.dart';

class Question extends StatelessWidget {  
  final String questionText;

  Question(this.questionText);
  
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
```
- `final String questionText;` value will never change after its initialization in the constructor<br>
`Question(this.questionText);` :arrow_right: **positional argument**<br>
`Question({this.questionText});` :arrow_right: **named argument**

**main.dart**
```
children: <Widget>[
            // calls the question file
            Question(questions[_questionIndex]),
```
- `import './question.dart';` importing the `question.dart` file 
- `Question()` constructor that calls the class and passes the value

## Styling & Layout
```
return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
```
1. First wrap the content inside into a container
2. `width: double.infinity,` allow the width of the content to be set to infinity
3. `margin: EdgeInsets.all(10),` this sets the padding around the entire content, `EdgeInsets.only()` allows for a specific side
    - padding is the internal spacing of the content
    - border can be given to the outer portion of the content
    - margin is a spacing that is given to the entire content
4. Text styling
```
 style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
```

# Passing Callback Functions Around 🤙
![image](https://user-images.githubusercontent.com/47095611/112948729-09a5ae00-9156-11eb-80f8-f0856dc7fa1a.png)

`answer.dart`
```
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Value has to be a function
  final Function selectHandler;

  //Constructor storing the function
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Answer 1'),
          // Using the function
          onPressed: selectHandler,
        ));
  }
}
```
`final Function selectHandler;` specifies that the value that is being passed is supposed to be a function, `final` defines that it cannot be changed

`Answer(this.selectHandler);` the constructor is storing the pointer to the function

`onPressed: selectHandler` passes the pointer to the `_answerQuestion` function

- **Button Styling**
  1. `color: Colors.blue` sets the color to blue
  2. `textColor: Colors.white` text color is set to white


`main.dart`
```
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
            Question(questions[_questionIndex]),            
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}

```
`import './answer.dart';` imports the answer file for displaying the buttons

`Answer(_answerQuestion)` is a pointer to the `_answerQuestion` function without the paranthesis because you want to execute the function *forwards the pointer to the function*


# Mapping Lists To Widgets 🗺️
![image](https://user-images.githubusercontent.com/47095611/112953998-9c951700-915b-11eb-8a98-f08d926e2d56.png)


`main.dart`
```
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
            Question(questions[_questionIndex]['questionText']),

            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              // returns an answer widget

              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
```

- `var question = [{}]` mapping
  1. Map is a collection of key value pairs
  2. Key could be a number or string, `'questionText':` & `'answers':` are the two keys
  3. Shorthand way to make it long way is using the `Map()` class
 
- `Question(questions[_questionIndex]['questionText'])` 
  1. First calls the questions function
  2. `[_questionIndex]` is firstly mapped
  3. `['questionText']` with the same index is read and sent to the Question constructor

```
...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              // returns an answer widget

              return Answer(_answerQuestion, answer);
            }).toList()
```
1. `...` is a spread operator
 - It takes a list and they pull all the values out of the list
 - Then adds them to the surrounding list as individual values
2. `(questions[_questionIndex]['answers'] as List<String>).map((answer){`
  - `questions[_questionIndex]['answers']` maps the answers of the current index
  - `List<String>` prepares the map function that a List full of Strings is going to be sent to the `.map((answer)
  - `.map((answer)` stores the value in the field answer
3. `return Answer(_answerQuestion, answer);` calls the constructor in the `answer.dart` file passing the fucntion and the answer text
4. `.toList()` generates a new list

`answer.dart`
```
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
```
`final String answerText;` adding another variable that will catch the answers that have been sent from the map function

 `Answer(this.selectHandler, this.answerText);` the answers will then be stored in this contructor
 
 `child: Text(answerText),` and printed using this Text box

# 'if' Statements

| and |
|-----|-----|
|True | True | True |
