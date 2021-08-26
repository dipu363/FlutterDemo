import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



 class ButtonState extends StatefulWidget{

  final String title;
  ButtonState({required this.title});

  @override
  ButtonCreateState createState() => ButtonCreateState();






}

class ButtonCreateState extends State<ButtonState>{
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title:Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          DisableTextButtoenWidget(),
          LinearGradientButtoenWidget(),
          EnableTextButtoenWidget(),
          OutlineButton1(),
          OutlineButton2(),
          ElevatedwidgetButton1(),
          ElevatedwidgetButton2(),
          flatwidgetButton2(),
          textwidgetButton2()
        ],
      ),

    );
      
      
      
      
  

  }

  
}

Widget DisableTextButtoenWidget()=>TextButton(
  style: TextButton.styleFrom(
    textStyle: const TextStyle(fontSize: 20),
  ),
  onPressed: null,
  child: const Text('Disabled'),
);

 Widget EnableTextButtoenWidget()=>TextButton(
   style: TextButton.styleFrom(
     textStyle: const TextStyle(fontSize: 20),
   ),
   onPressed: () {},
   child: const Text('Enabled'),
);


 Widget LinearGradientButtoenWidget()=>ClipRRect(
   borderRadius: BorderRadius.circular(4),
   child: Stack(
     children: <Widget>[
       Positioned.fill(
         child: Container(
           decoration: const BoxDecoration(
             gradient: LinearGradient(
               colors: <Color>[
                 Color(0xFF0D47A1),
                 Color(0xFF1976D2),
                 Color(0xFF42A5F5),
               ],
             ),
           ),
         ),
       ),
       TextButton(
         style: TextButton.styleFrom(
           padding: const EdgeInsets.all(16.0),
           primary: Colors.white,
           textStyle: const TextStyle(fontSize: 20),
         ),
         onPressed: () {},
         child: const Text('Gradient'),
       ),
     ],
   ),
 );


Widget OutlineButton1()=> OutlinedButton(
  style: ButtonStyle(
    shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
    side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.pressed)
              ? Colors.blue
              : Colors.red;
          return BorderSide(color: color, width: 2);
        }
    ),
  ),
  onPressed: () { },
  child: Text('OutlinedButton with custom shape and border'),
);


Widget OutlineButton2() => OutlineButton(
  shape: StadiumBorder(),
  highlightedBorderColor: Colors.blue,
  borderSide: BorderSide(
      width: 2,
      color: Colors.red
  ),
  onPressed: () { },
  child: Text('OutlineButton with custom shape and border'),
);

Widget ElevatedwidgetButton1() =>ElevatedButton(
  style: ButtonStyle(
    elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed))
            return 16;
          return 0;
        }),
  ),
  onPressed: () { },
  child: Text('ElevatedButton with a custom elevation'),
);
Widget ElevatedwidgetButton2() =>ElevatedButton(
  style: ElevatedButton.styleFrom(elevation: 2),
  onPressed: () { },
  child: Text('ElevatedButton with custom elevations'),

);
Widget flatwidgetButton2() =>FlatButton(
  focusColor: Colors.red,
  hoverColor: Colors.green,
  splashColor: Colors.blue,
  onPressed: () { },
  child: Text('FlatButton with custom overlay colors'),
);

Widget textwidgetButton2() =>TextButton(
  style: ButtonStyle(
    overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.focused))
            return Colors.red;
          if (states.contains(MaterialState.hovered))
            return Colors.green;
          if (states.contains(MaterialState.pressed))

            return Colors.blue;


            return Colors.black;

           // Defer to the widget's default.
        }),
  ),
  onPressed: () { },
  child: Text('TextButton with custom overlay colors'),
);




