import 'package:bloodbank/screens/login/LogInScreen.dart';
import 'package:bloodbank/utils/AppUtils.dart';
import 'package:bloodbank/utils/ApplicationMemory.dart';
import 'package:bloodbank/utils/CommonLabel.dart';
import 'package:bloodbank/utils/TextStore.dart';
import 'package:bloodbank/utils/dialog/AppToast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/HomeScreen.dart';
import 'login/partial/AppNameStyle.dart';



class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  /*property*/
  bool visibleProgressBar = true;

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() {
    Future.delayed(const Duration(milliseconds: 5000), () async {
      final String nid =
          await ApplicationMemory.getString(ApplicationMemory.KEY_NID);
      final String mobileno =
          await ApplicationMemory.getString(ApplicationMemory.KEY_MOBILE_NO);
      if (await AppUtils.checkConnectivity()) {
       // load common label//
        await CommonLabel.initList(context);
        var nextScreen = nid == null || mobileno == null ? LogInScreen() : HomeScreen();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => nextScreen));
      } else {
        AppToast(context).showToast(
           " CommonLabel.commonCheckConnection", AppToast.ERROR, AppToast.LONG);
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(bottom: 10.0, top: 5.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(
                        TextStore.img_ministry_logo,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      TextStore.splash_name_en,
                      style: textStyle,
                    ),
                    Text(
                      TextStore.splash_name_ar,
                      style: textStyle,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    AppNameStyle(
                      text1: TextStore.splash_moto1_en,
                      text2: TextStore.splash_moto2_en,
                    ),
                    AppNameStyle(
                      text1: TextStore.splash_moto1_ar,
                      text2: "",
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    SizedBox(
                      width: 300,
                      height: 100,
                      child: Image.asset(
                        TextStore.img_blood_bank,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: <Widget>[
                      Visibility(
                        visible: visibleProgressBar,
                        child: CircularProgressIndicator(),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(TextStore.appVersion),
                      SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        child: Image.asset(
                          TextStore.img_medisys_logo,
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
