import 'package:flutter/material.dart';
import 'package:tab_bar_example/one.dart';
import 'package:tab_bar_example/two.dart';

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
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.browse_gallery,),),
                Tab(icon: Icon(Icons.album),),
              ],
              indicatorColor: Colors.red,

            ),

          ),
          body: TabBarView(
            children: [
              One(),
              Two()
            ],
          ),
        ),
      ),
    );
  }
}


