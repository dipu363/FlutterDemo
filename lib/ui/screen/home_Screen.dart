
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/screen/check_email_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/create_new%20_password_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/login_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/no_internet_connection_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/password_changed_success_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/payment_filed_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/profile/profile_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/purchased_course_successful_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/qize/question_paper_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/registration_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/reset_password_screen.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard',style: TextStyle(fontFamily: 'SFProDisplay'),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
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
              }),
              const SizedBox(height: 10,),
              CommonElevatedButton(title: 'login', onTap: (){
                Get.to(const LogInScreen()) ;
              }),
              const SizedBox(height: 10,),
              CommonElevatedButton(title: 'registration', onTap: (){
                Get.to(const RegistrationScreen()) ;
              }),
              const SizedBox(height: 10,),
              CommonElevatedButton(title: 'resetpassword', onTap: (){
                Get.to(const ResetPasswordScreen()) ;
              }),
              const SizedBox(height: 10,),
              CommonElevatedButton(title: 'CheckMail', onTap: (){
                Get.to(const CheckEmailScreen()) ;
              }),
              const SizedBox(height: 10,),
              CommonElevatedButton(title: 'Create new password', onTap: (){
                Get.to(const CreateNewPasswordScreen()) ;
              }),
              const SizedBox(height: 10,),
              CommonElevatedButton(title: 'Changepasswordsuccess', onTap: (){
                Get.to(const PasswordChangedSuccessScreen()) ;
              }),
              const SizedBox(height: 10,),
              CommonElevatedButton(title: 'profile', onTap: (){
                Get.to(const ProfileScreen()) ;
              }),
              const SizedBox(height: 10,),
              CommonElevatedButton(title: 'Quiz paper', onTap: (){
                Get.to(QuestionPaperScreen()) ;
              }),
              const SizedBox(height: 10,),
            ],

        ),
      )

    );
  }
}






