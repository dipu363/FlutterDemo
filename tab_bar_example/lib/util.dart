import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Util{


  Future<bool?> showMessage(String message){
    return  Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        toastLength:Toast.LENGTH_SHORT,

    );

  }
}