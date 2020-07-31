import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  //build method which returns a Widget
  Widget build(BuildContext context) {
    // Widget is the class MaterialApp
    return MaterialApp(
      home: Scaffold(
        //Class built to make a base screen
        appBar: AppBar(
          title: Text("My First App"),
        ), // Scaffold class takes a positonal argument as an app bar whcih takes a title
        body: Text("Lorem Ipsum Stuff"),
      ),
    );
  }
}
