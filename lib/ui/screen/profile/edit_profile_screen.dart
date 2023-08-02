import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/screen/profile/profile_screen.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/common_elevated_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool imageVisible =false;
  bool addImageIconVisible =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(

          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color:Colors.white,
                    width: double.infinity,
                    height: 160,
                  ),
                  Text('Profile Image',style: heading1.copyWith(fontSize: 20),),
                  Visibility(
                    visible: addImageIconVisible,
                    child: Positioned(
                      top: 50,
                      left: 120,
                      child: Container(

                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: generalWhite,
                            border: Border.all(color: neutralBlack500),
                          borderRadius: BorderRadius.circular(10)

                        ),

                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              if(!imageVisible){
                                imageVisible = true;
                                addImageIconVisible = false;
                              }
                            });
                          },
                            icon: const Icon(Icons.add,size: 20),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: imageVisible,
                    child: Positioned(
                      top: 30,
                      left: 100,
                      child: SizedBox(
                        height: 130,
                        width: 130,
                        child: CircleAvatar(
                            child: Image.asset(
                              'assets/images/useravatar.png',
                              height: 130,
                              width: 130,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Information',
                          style: heading1.copyWith(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Full Name',
                          style: heading2,
                        ),
                        TextFormField(
                          style: editingTextStyle,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Please Enter full name';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person_outline,
                              size: 20,
                            ),
                            hintText: 'Full Name',
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Email Address',
                          style: heading2,
                        ),
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
                            hintText: 'Email Address',
                          ),

                        ),
                      ],
                    ),
                    const SizedBox(height: 200,),
                    CommonElevatedButton(
                        title: 'Save Change',
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            print('Profile Editing Success ');
                            Get.off(()=> const ProfileScreen());
                          }
                        })
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
