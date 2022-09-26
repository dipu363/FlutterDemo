
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_validation_example/ui/ApiService.dart';
import 'package:from_validation_example/ui/HomePage.dart';
import 'package:from_validation_example/ui/UserInfo.dart';
import 'package:from_validation_example/ui/baseResponse.dart';
import 'package:from_validation_example/ui/registration.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

    final formKey = GlobalKey<FormState>();

    BaseResponse baseResponse = BaseResponse();
    TextEditingController usernamecontroller = new  TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

 final sizeboxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 40,right: 40),
        child: Form(
          key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: sizeboxHeight*.1,),
                const Text("Hay, Back To Hare" ,style: TextStyle(color: Colors.deepPurple,fontSize: 28.0,fontStyle: FontStyle.normal,fontWeight:FontWeight.w900),),
                const Text("You are Most Welcome" ,style: TextStyle(color: Colors.black,fontSize: 20.0,fontStyle: FontStyle.normal,fontWeight:FontWeight.w700),),
                SizedBox(height: sizeboxHeight*.06,),

                TextFormField(
                  controller: usernamecontroller,
                  decoration:const InputDecoration(
                    labelText: "Enter User Name"
                  ),
                 keyboardType: TextInputType.text,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Type User name ";
                    }
                    return null;
                  },

                ),
                TextFormField(
                  obscureText: true,
                  decoration:const InputDecoration(
                    labelText: "Enter Password"
                  ),
                 keyboardType: TextInputType.visiblePassword,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Type Password ";
                    }
                    return null;
                  },

                ),
                SizedBox(height: sizeboxHeight*.06,),
                Center(
                  child: RaisedButton(
                      onPressed: (){

                        if(formKey.currentState!.validate()){
                          String user = usernamecontroller.text.toString();
                          _getUserInfo(user);


                        }

                      },
                    child: const Text("LogIn",style: TextStyle(fontSize: 14),),





                  ),
                )

              ],
            )


        ),
      )
      );


  }



   void _getUserInfo(String userName) async{


      baseResponse = await ApiService(context).getUsers(userName);

    if(baseResponse.obj != null){
      print(baseResponse.obj?.fname);
      Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage()));
    }else {
      print('Data not found');
    }



  }



}
