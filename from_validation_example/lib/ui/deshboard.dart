
import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  var _currentStage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 24,
        selectedItemColor: Colors.green,


        currentIndex: _currentStage,

        items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.camera),label: 'one'),
        BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'two'),
        BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'three'),
        BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'four'),
        BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'five')
      ],
      onTap: (index){
          setState(() {
            _currentStage = index;
          });

      },

      ),
    );
  }
}
