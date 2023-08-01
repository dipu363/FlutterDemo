
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/screen/home_Screen.dart';
import 'package:internetconnectivitycheck/ui/screen/login_screen.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Create Account' ,style: heading1,),
                        Text('Please create an account to find your dream job.' ,style: heading2,),
                        const SizedBox(height:15,),
                        TextFormField(
                          validator: (value){
                            if (value?.isEmpty ?? true) {
                              return 'Please Enter username';
                            } else {
                              return null;
                            }
                          },
                          style:  editingTextStyle,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline,size: 20,),
                            hintText: 'Username',
                          ),

                        ),
                        const SizedBox(height:8,),
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
                            hintText: 'Email',
                          ),

                        ),
                        const SizedBox(height:8,),
                        TextFormField(

                          style: editingTextStyle,
                          obscureText: obscurePassword,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value){
                            if (value?.isEmpty ?? true) {
                              return 'Please Enter password';
                            } else {
                              if (value!.length < 8) {
                                return 'Password must be at least 8 characters';
                              } else {
                                return null;
                              }
                            }
                          },
                          decoration:  InputDecoration(
                            prefixIcon: const Icon(Icons.lock_outline,size: 20,),
                            helperText: "",
                            hintText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    if(obscurePassword){
                                      obscurePassword = false;
                                    }else{
                                      obscurePassword = true;
                                    }
                                  });
                                },


                                icon:  Icon(obscurePassword? Icons.visibility : Icons.visibility_off)),
                            errorText: 'Password must be at least 8 characters'
                          ),

                        ),
                      ],
                    ),
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
                            'Already have an account?',
                            style: subtitleTextStyle,
                          ),
                          TextButton(
                              onPressed: () {

                                Get.off(()=> const  LogInScreen());
                              },
                              child: Text(
                                'LogIn',
                                style: subtitleTextStyle.copyWith(
                                    color: dreamBlue),
                              ))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height:8,),
                  CommonElevatedButton(title: 'Create Account', onTap: (){
                    if(_formKey.currentState!.validate()){
                      print('registration success');
                      Get.off(()=> const HomeScreen());
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
