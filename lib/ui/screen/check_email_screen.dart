import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class CheckEmailScreen extends StatefulWidget {
  const CheckEmailScreen({Key? key}) : super(key: key);

  @override
  State<CheckEmailScreen> createState() => _CheckEmailScreenState();
}

class _CheckEmailScreenState extends State<CheckEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Check your Email ' ,style: heading1,textAlign: TextAlign.center,),
                    Text('We have sent a reset password to your email address' ,style: heading2,
                      textAlign: TextAlign.center,),

                  ],
                )

            ),
            CommonElevatedButton(title: 'Open email app', onTap: () async {
               await LaunchApp.openApp(
                androidPackageName: 'com.google.android.gm',
                //iosUrlScheme: 'com.google.android.gm://',
                 openStore: true
              );

            })
          ],
        ),
      ),

    );
  }
}
