
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class PurchasedCourseSuccessfulScreen extends StatelessWidget {
  const PurchasedCourseSuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration:const  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   const SizedBox(
                     width:100,height: 2,
                       child: Divider(height: 2,thickness: 2,color: Colors.black, indent: 2,endIndent: 2,)),
                   const SizedBox(height: 10,),
                   Image.asset('assets/images/paymentsuccess.gif',height: 140,),
                   const SizedBox(height: 20,),
                   Text('Purchased course successfully' ,style: titleTextStyle,),
                   Text('You have made successful payment and you have successfully enrolled in course.' ,style: subtitleTextStyle,),

                 ],
               ),
              const SizedBox(height: 20,),
              CommonElevatedButton(
                onTap: (){
                  Get.back();
                },
                title: 'View Course',
              ),
              const SizedBox(height: 10,),
              TextButton(onPressed: (){
                Get.back();
              }, child: const Text('Back',style: TextStyle(fontSize: 14),),)
            ],
          ),
        ),
      ),
    );
  }
}
