
import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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

                    Text('Create Account' ,style: heading1,),
                    Text('Please create an account to find your dream job.' ,style: heading2,),
                    const SizedBox(height:24,),
                    TextFormField(
                      style:  editingTextStyle,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline,size: 20,),
                        hintText: 'Username',
                      ),

                    ),
                    const SizedBox(height:12,),
                    TextFormField(
                      style:  editingTextStyle,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined,size: 20,),
                        hintText: 'Email',
                      ),

                    ),
                    const SizedBox(height:12,),
                    TextFormField(

                      style: editingTextStyle,
                      obscureText: obscurePassword,
                      keyboardType: TextInputType.visiblePassword,

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
                          'Already have an account?',
                          style: subtitleTextStyle,
                        ),
                        TextButton(
                            onPressed: () {

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
                const SizedBox(height:12,),
                CommonElevatedButton(title: 'Create Account', onTap: (){})
              ],
            )
          ],
        ),
      ),

    );
  }
}
