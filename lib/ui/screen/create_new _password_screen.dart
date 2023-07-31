
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  bool obscurePassword1 = true;
  bool obscurePassword2 = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

                    Text('Create new password' ,style: heading1,),
                    Text('set your new password so you can login and access Jobsque.' ,style: heading2,),
                    const SizedBox(height:24,),
                    TextFormField(

                      style: editingTextStyle,
                      obscureText: obscurePassword1,
                      keyboardType: TextInputType.visiblePassword,

                      decoration:  InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline,size: 20,),
                        helperText: "",
                        hintText: 'Password',
                        suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                if(obscurePassword1){
                                  obscurePassword1 = false;
                                }else{
                                  obscurePassword1 = true;
                                }
                              });
                            },


                            icon:  Icon(obscurePassword1? Icons.visibility : Icons.visibility_off)),
                      ),

                    ),
                    const SizedBox(height:12,),
                    TextFormField(

                      style: editingTextStyle,
                      obscureText: obscurePassword2,
                      keyboardType: TextInputType.visiblePassword,

                      decoration:  InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline,size: 20,),
                        helperText: "",
                        hintText: 'Password',
                        suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                if(obscurePassword2){
                                  obscurePassword2 = false;
                                }else{
                                  obscurePassword2 = true;
                                }
                              });
                            },


                            icon:  Icon(obscurePassword2? Icons.visibility : Icons.visibility_off)),
                      ),

                    ),


                  ],
                )

            ),
            CommonElevatedButton(title: 'Reset Password', onTap: (){})
          ],
        ),
      ),

    );
  }
}
