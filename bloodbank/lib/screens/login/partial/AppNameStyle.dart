import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNameStyle extends StatelessWidget{
  final String text1;
  final String text2;


  AppNameStyle({ required this.text1,  required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
              fontSize: 20.0,
              color: Theme.of(context).primaryColor
          ),
        ),
        SizedBox(width: 5.0,),
        Text(
          text2,
          style: TextStyle(
              fontSize: 20.0,
              color: Theme.of(context).primaryColorDark
          ),
        ),
      ],
    );
  }
}