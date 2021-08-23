


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  static const appTitle = 'Drawer Demo';
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   title: appTitle,
   home: Homepage(title:appTitle),
 );
  }

}


class Homepage extends StatelessWidget{

  const Homepage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body:Center(
          child:Text('click me')
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)
                ),

              ),
                child: Text('this is drawer header')
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: (){
                
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: (){

                Navigator.pop(context);

              },


            )
          ],
        ),

      ),
    );
  }



/*  void showToastMessage(String message){
    Fluttertoast.showToast(
        msg: message, //message to show toast
        toastLength: Toast.LENGTH_LONG, //duration for message to show
        gravity: ToastGravity.CENTER, //where you want to show, top, bottom
        timeInSecForIosWeb: 1, //for iOS only
        //backgroundColor: Colors.red, //background Color for message
        textColor: Colors.white, //message text color
        fontSize: 16.0 //message font size
    );
  }*/


}
