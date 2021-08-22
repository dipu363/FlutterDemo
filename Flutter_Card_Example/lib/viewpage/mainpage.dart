

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{

  final String title;
  MainPage({required this.title});

  @override
  MainPageState createState() => MainPageState();

}


class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildQuoteCard(),
          buildRoundCard(),
          buildColoredCard(),
          buildImageCard(),
          buildImageInteractionCard(),
        ],
      ),

    );
  }
}


Widget buildQuoteCard()=>Card(

  child: Padding(
    padding: EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( 'If life were predictable it would cease to be life, and be without flavor.',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10.0,),
        Text( 'Giyas Uddin.',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),

      ],
    ),
  ),
);

Widget buildRoundCard()=>Card(

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0)

  ),
  child: Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rounded card',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 10.0,),
        Text('This Card is Rounded',style:TextStyle(fontSize: 20) ,)
      ],
    ),
  ),

);


Widget buildColoredCard()=> Card(
  elevation: 5,
  shadowColor: Colors.yellow,
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),

child: Container(
  decoration: BoxDecoration(

    gradient: LinearGradient(
      colors: [Colors.purple,Colors.deepPurple],
      begin:Alignment.topCenter,
        end: Alignment.bottomCenter,
    )
  ),

  padding: EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Text(
        'Colored card',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        'This card is rounded and has a gradient',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ],
  ),
),
);

Widget buildImageCard(){
  return Card(
    elevation: 5,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
              image: NetworkImage('https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',),
            child: InkWell(
              onTap: () {},
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Text(
            'Card With Splash',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],

  ),
  );



}
Widget buildImageInteractionCard() => Card(
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),
  child: Column(
    children: [
      Stack(
        children: [
          Ink.image(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Text(
              'Cats rule the world!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.all(16).copyWith(bottom: 0),
        child: Text(
          'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
          style: TextStyle(fontSize: 16),
        ),
      ),
      ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          TextButton(
            child: Text('Buy Cat'),
            onPressed: () {},
          ),
          TextButton(
            child: Text('Buy Cat Food'),
            onPressed: () {},
          )
        ],
      )
    ],
  ),
);
