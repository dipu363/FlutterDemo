
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class PaymentFailedScreen extends StatelessWidget {
  const PaymentFailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children: [
            Expanded(
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/paymentfailed.png',height: 140,),
                    const SizedBox(height: 40,),
                    Text('Payment Failed !' ,style: titleTextStyle,),
                    Text('Your payment was Failed !' ,style: subtitleTextStyle,),
                    Text('Try again' ,style: subtitleTextStyle,)

                  ],
                )
            ),
            CommonElevatedButton(
              onTap: (){
                Get.back();
              },
              title: 'Back to Home',
            ),
          ],
        ),
      ),
    );
  }
}
