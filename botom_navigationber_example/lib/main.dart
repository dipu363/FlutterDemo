

import 'package:botom_navigationber_example/ui/Four.dart';
import 'package:botom_navigationber_example/ui/One.dart';
import 'package:botom_navigationber_example/ui/Three.dart';
import 'package:botom_navigationber_example/ui/Two.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var currentStage = 0;

  final pages = [
    One(),
    Two(),
    Three(),
    Four()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentStage,

        items: [

          BottomNavigationBarItem(

            backgroundColor: Colors.red,
              icon: Icon((Icons.message)),
           label:"Message"
          ),
          BottomNavigationBarItem(
              icon: Icon((Icons.phone)),
              label:"Phone"
          ),
          BottomNavigationBarItem(
              icon: Icon((Icons.camera)),
              label:"Camera"
          ),
          BottomNavigationBarItem(
              icon: Icon((Icons.menu)),
              label:"Menu"
          ),
        ],
        onTap: (index){
          setState(() {
            currentStage = index;
          });
        },
      ),
      body: pages[currentStage],
    );
  }



}
