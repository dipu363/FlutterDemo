import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToast {

  late BuildContext buildContext;
  late FToast fToast ;
  static const int SUCCESS = 1;
  static const int ERROR = 0;

  static const int SHORT = 2;
  static const int LONG = 4;


  AppToast(BuildContext context) {
    buildContext= context;
    fToast = FToast();
    fToast.init(context);
  }

  showToast(String text , int type , int duration ){
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 6.0),
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(5.0),
        color: type == SUCCESS ? Colors.green : Colors.red
      ),
      child: Row(
       mainAxisSize:  MainAxisSize.min,
        children: [
          Icon(type == SUCCESS? Icons.check_circle:Icons.info_outline , color: Colors.white),
          const SizedBox(width: 2.0,),
          Expanded(
              child: Text(text,style: const TextStyle(fontSize: 14,color: Colors.white))
          )
        ],
      ),


    );
    
    fToast.showToast(
        child: toast,
        toastDuration: Duration(seconds: duration),
        gravity:ToastGravity.BOTTOM
    );



  }


}