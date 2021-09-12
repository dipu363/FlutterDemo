import 'package:flutter/material.dart';
import 'package:flutter_button_example/buttenWidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ButtonState(title: 'Flutter Demo Button'),
    );
  }
}

