import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToast{
 late BuildContext context;
 late FToast fToast;

  static const int SUCCESS = 1;
  static const int ERROR = 0;

  static const int SHORT = 2;
  static const int LONG = 4;


  AppToast(BuildContext context){
    this.context = context;
    fToast = FToast();
    fToast.init(context);
  }


 showToast(String text, int type, int duration) {
   Widget toast = Container(
     padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20.0),
       color: type == SUCCESS ? Colors.green : Colors.red,
     ),
     child: Row(
       mainAxisSize: MainAxisSize.min,
       children: [
         Icon(type == SUCCESS ? Icons.check_circle : Icons.info_outline, color: Colors.white),
         SizedBox(
           width: 12.0,
         ),
         Expanded(child: Text(text, style: TextStyle(color: Colors.white),)),
       ],
     ),
   );

   fToast.showToast(
     child: toast,
     gravity: ToastGravity.BOTTOM,
     toastDuration: Duration(seconds: duration),
   );
 }
}

