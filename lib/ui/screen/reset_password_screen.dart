import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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

                            },
                            child: Text(
                              'LogIn',
                              style: editingTextStyle,
                            ))
                      ],
                    ),
                  ],
                ),
                const SizedBox(height:12,),
                CommonElevatedButton(title: 'Request reset password', onTap: (){})
              ],
            )
          ],
        ),
      ),

    );
  }
}
