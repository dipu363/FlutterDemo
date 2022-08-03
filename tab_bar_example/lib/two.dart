import 'package:flutter/material.dart';
import 'package:tab_bar_example/util.dart';

class Two extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Center(
      child:RaisedButton(
        color: Colors.pink,
        elevation: 10.0,
        onPressed: () {
         Util().showMessage("This is Tost Message");
        },
      child: Text("Add"),
      )
    );
  }

}