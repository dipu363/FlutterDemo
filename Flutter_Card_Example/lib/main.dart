import 'package:flutter/material.dart';
import 'package:flutter_card_example/viewpage/mainpage.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  static final String title = 'Card Example';
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.purple),
    home: MainPage(title:title),
  );

}


