import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class One extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200.0,
              color: Colors.deepOrangeAccent,

            ),
            Container(
              height: 200.0,
              color: Colors.blue,

            ),
            Container(
              height: 200.0,
              color: Colors.deepPurple,

            ),
            Container(
              height: 200.0,
              color: Colors.pink,

            ),
          ],
        ),
      ),
    );
  }

}