import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("answer chosen");
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
            Text("The questions is!: "),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
