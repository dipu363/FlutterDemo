import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(scrollDirection: Axis.vertical,
        itemCount: 100,
        itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.arrow_right,size: 35,color: Colors.deepPurple,),
          title:Text( '$index+1'),
          trailing: RaisedButton(
            onPressed: (){

            },
            child: Icon(Icons.delete,color: Colors.red,),
          ),
        );
        }

      ),
    );
  }
}
