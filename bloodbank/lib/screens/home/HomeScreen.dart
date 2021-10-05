import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget{
  @override
  HomeScreenState createState() => HomeScreenState();

}

class HomeScreenState extends State <HomeScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
  return Center(
    child: Text("Hello I am Home page"),
  );


  }

}