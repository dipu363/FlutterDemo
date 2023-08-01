import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/screen/check_email_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/login_screen.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height:24,),

                      Text('Reset Password' ,style: heading1,),
                      Text('Enter the mail address when you join and we\'ll send you instruction to reset your password.' ,style: heading2,),
                      const SizedBox(height:24,),
                      TextFormField(
                        validator: (String? value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please Enter Valid Email Address';
                          } else {
                            if (!value!.contains('@')) {
                              return 'Please Enter Valid Email Address with "@"';
                            } else {
                              return null;
                            }
                          }
                        },
                        style:  editingTextStyle,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined,size: 20,),
                          hintText: 'Enter your email...',
                        ),

                      ),
                    ],
                  )

              ),
              Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            'You remember your password?',
                            style: subtitleTextStyle,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.offAll(() => const LogInScreen());
                              },
                              child: Text(
                                'LogIn',
                                style: editingTextStyle.copyWith(color: dreamBlue),
                              ))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height:12,),
                  CommonElevatedButton(title: 'Request reset password', onTap: (){
                    if(_formKey.currentState!.validate()){
                      print('sent a password in you email address');
                      Get.to((()=>const CheckEmailScreen()));
                    }
                  })
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
