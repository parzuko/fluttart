import 'package:flutter/material.dart';

import './question.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  //build method which returns a Widget
  Widget build(BuildContext context) {
    // Widget is the class MaterialApp
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        //Class built to make a base screen
        appBar: AppBar(
          title: Text("My First App"),
        ), // Scaffold class takes a positonal argument as an app bar whcih takes a title
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Answer 2 chosen!"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print("Answer 3 chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
