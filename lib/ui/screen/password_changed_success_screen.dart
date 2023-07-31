
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
class PasswordChangedSuccessScreen extends StatefulWidget {
  const PasswordChangedSuccessScreen({Key? key}) : super(key: key);

  @override
  State<PasswordChangedSuccessScreen> createState() => _PasswordChangedSuccessScreenState();
}

class _PasswordChangedSuccessScreenState extends State<PasswordChangedSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
          Get.back();
        },),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/passwordchangesuccess.png',height: 140,),
            const SizedBox(height: 12,),
            Text(
              'Password Changed successfully! ' ,
              textAlign: TextAlign.center
              ,style: heading1,),
            Text('your password has been changed successfully. we will let you know if there are more problems with your account.' ,
              style: heading2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),

    );
  }
}
