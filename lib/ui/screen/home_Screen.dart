
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/screen/no_internet_connection_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/payment_filed_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/purchased_course_successful_screen.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonElevatedButton(title: 'Pay now', onTap: (){
              showModalBottomSheet(
                elevation: 8,
                  isDismissible: false,
                  backgroundColor: Colors.black,
                  context: context,
                  builder: (BuildContext context){
                    return const PurchasedCourseSuccessfulScreen();

                  }
              );

            }),
            const SizedBox(height: 10,),
            CommonElevatedButton(title: 'payment failed', onTap: (){
                    Get.to(const PaymentFailedScreen()) ;
            }),
            const SizedBox(height: 10,),
            CommonElevatedButton(title: 'No network', onTap: (){
              Get.to(const NoInternetConnectionScreen()) ;
            })
          ],
        ),
      )

    );
  }
}






