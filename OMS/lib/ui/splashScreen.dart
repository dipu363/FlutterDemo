import 'dart:async';
import 'user/signin.dart';

import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),()=>{
      Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context) => const LogIn()))
    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,right: true,top: true,bottom: true,
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.amber),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          radius: 50,
                          child: Icon(
                            Icons.star,
                            color: Colors.redAccent,
                            size: 50,
                          ),

                        ),
                        Padding(padding:EdgeInsets.only(top: 10.0)),
                        Text("ABORONG" ,style: TextStyle(color: Colors.white70,fontWeight:FontWeight.bold,fontSize: 28.0),)

                      ],
                    )

                ),
                Expanded(
                  flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        Text("Online Hole Sale Store \n for Everyone",style: TextStyle(color: Colors.white70,fontWeight:FontWeight.bold,fontSize: 28.0),textAlign: TextAlign.center,)
                      ],

                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
