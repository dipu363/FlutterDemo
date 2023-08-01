import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/screen/home_Screen.dart';
import 'package:internetconnectivitycheck/ui/screen/registration_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/reset_password_screen.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obscurePassword = true;
  bool isChecked = false;
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
                    Text(
                      'LogIn',
                      style: heading1,
                    ),
                    Text(
                      'Please login to find your dream job.',
                      style: heading2,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      style: editingTextStyle,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please Enter username';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: 20,
                        ),
                        hintText: 'Username',
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      style: editingTextStyle,
                      obscureText: obscurePassword,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please Enter password';
                        } else {
                            return null;
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          size: 20,
                        ),
                        helperText: "",
                        hintText: 'Password',
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (obscurePassword) {
                                  obscurePassword = false;
                                } else {
                                  obscurePassword = true;
                                }
                              });
                            },
                            icon: Icon(obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Checkbox(
                                  activeColor: dreamBlue,
                                  checkColor: generalWhite,
                                  value: isChecked,
                                  onChanged: (value) =>
                                      setState(() => isChecked = value!)),
                              Text(
                                'Remember me',
                                style: editingTextStyle,
                              )
                            ]),
                        TextButton(
                            onPressed: () {
                              Get.to(()=> const ResetPasswordScreen());
                            },
                            child: Text(
                              'Forget Password?',
                              style:
                                  editingTextStyle.copyWith(color: dreamBlue),
                            ))
                      ],
                    )
                  ],
                ),
              )),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: editingTextStyle,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.off(()=> const RegistrationScreen());
                              },
                              child: Text(
                                'Register',
                                style: subtitleTextStyle.copyWith(
                                    color: dreamBlue),
                              ))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CommonElevatedButton(
                      title: 'LogIn',
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          print('login success ');
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
