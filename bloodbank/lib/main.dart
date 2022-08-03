import 'package:bloodbank/screens/SplashScreen.dart';
import 'package:bloodbank/utils/TextStore.dart';

// @dart=2.9
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var appColor = Color(0xffB40404);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TextStore.appName,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Color(0xff3B8B83),
        primaryColor: appColor,
      ),
      home: SplashScreen(),

    );
  }
}



