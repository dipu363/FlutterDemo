import 'package:flutter/material.dart';
import 'package:oms/apiconfig/aplicationApi.dart';
import 'package:oms/apiconfig/responseModel/baseResponse.dart';
import 'package:oms/ui/user/homepage.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final formKey = GlobalKey<FormState>();

  BaseResponse baseResponse = BaseResponse();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment. start,
            children: [
              SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                          alignment:AlignmentDirectional.topStart,
                          decoration: const BoxDecoration(
                              image:DecorationImage(
                                fit: BoxFit.fitHeight,
                                  image: AssetImage("images/logo.jpg")
                              )
                          ),

                        ))
                  ],
                ),
              ),

              const SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text("Hello There \nWelcome Back",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber),),
                    const SizedBox(height: 20,),
                    TextFormField(
                      controller: userNameController,
                      decoration: const InputDecoration(
                        labelText: 'Type User name',
                        border: OutlineInputBorder(
                            borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                        focusColor: Colors.amber,

                      ),
                      keyboardType: TextInputType.text,
                      validator: (value){

                        if (value == null){
                          return "Please Enter User Name";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(

                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Type Password ',
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                        
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value){

                        if (value == null){
                          return "Please Enter valid Password";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20,),
                    /*Center(
                      child: RaisedButton(
                        onPressed: (){
                          if (formKey.currentState!.validate()){
                            String user = userNameController.text.toString();
                            String pass = passwordController.text.toString();
                            print(user + pass);
                            _getUserInfo(user);
                          }


                        },
                        elevation: 10,
                        color: Colors.amber,
                        child: const Text('Log In',style: TextStyle(fontSize: 14,color: Colors.white)),

                      ),
                    )*/

                  ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }



  void _getUserInfo(String userName) async{
    baseResponse = await ApplicationApi(context).getAllUser(userName);
    if(baseResponse.obj != null){
      print(baseResponse.obj?.fname);
      Navigator.push(context, MaterialPageRoute(builder:(context)=> HomePage()));
    }else {
      print('Data not found');
    }



  }
}
