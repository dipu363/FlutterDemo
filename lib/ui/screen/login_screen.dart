
import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_edittext_field.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {


  bool obscurePassword = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

                    Text('LogIn' ,style: heading1,),
                    Text('Please login to find your dream job.' ,style: heading2,),
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
                              onChanged: (value)=> setState(() =>isChecked = value!)
                            ),
                            Text('Remember me',style: editingTextStyle,)
                          ]
                        ),

                        TextButton(
                            onPressed: () {

                            },
                            child: Text(
                              'Forget Password?',
                              style: editingTextStyle.copyWith(
                                  color: dreamBlue),
                            ))

                      ],
                    )
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
                          'Don\'t have an account?',
                          style: editingTextStyle,
                        ),
                        TextButton(
                            onPressed: () {

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
                const SizedBox(height:12,),
                CommonElevatedButton(title: 'LogIn', onTap: (){})
              ],
            )
          ],
        ),
      ),

    );
  }
}
