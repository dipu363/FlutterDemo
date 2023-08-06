
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/screen/home_Screen.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';
import 'package:internetconnectivitycheck/ui/widget/question_widget.dart';

class QuestionPaperScreen extends StatefulWidget {
  const QuestionPaperScreen({Key? key}) : super(key: key);

  @override
  State<QuestionPaperScreen> createState() => _QuestionPaperScreenState();
}

class _QuestionPaperScreenState extends State<QuestionPaperScreen> {


   int? selectedButton;

var anslist = ['a' ,'b' ,'c','d'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Test'),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(
              children: [
                Expanded(

                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context,index) {
                      return Column(
                          children: [
                            const Text(
                              'Question 1 :  কয়টি উপায়ে একজন উদ্যোক্তার মানসিকতা গড়ে তুলা?',
                              style: TextStyle(fontSize: 20),),
                            SizedBox(
                              height: 200,
                              child: ListView.builder(
                                  itemCount: 4,
                                  itemBuilder: (BuildContext context, int index) {
                                    return  Column(
                                      children: [
                                        Container(
                                          height:300,
                                            child: QuestionWidget()),
                                      ],
                                    );
                                  }

                              ),
                            ),
                          ]
                      );

                    },
                  ),
                ),
                InkWell(
                  onTap: (){
                    Get.defaultDialog(
                      backgroundColor: generalWhite,
                      barrierDismissible: false,
                      title: 'Sorry you have field you test?', titleStyle: const TextStyle(color: danger500),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text('Don\'t worry you can retake or test now of latter!',style: heading1,),
                           const SizedBox(height: 100),
                           Text('2/10',style: heading1,),
                        ],
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      actions: [
                        Container(
                          width:double.infinity,
                          decoration: BoxDecoration(
                              color: dreamBlue,
                              border: Border.all(color: dreamBlue),
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: dreamBlue, elevation: 0),
                            child: const Text('Retake',style: TextStyle(color: generalWhite),),
                          ),
                        ),

                      ],

                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: dreamBlue,
                        border: Border.all(color: dreamBlue),
                        borderRadius: BorderRadius.circular(10)),
                    height: 60,
                    child:  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('4/4',style: heading1.copyWith(color: generalWhite,fontSize: 20)),
                          Text('Submit Quiz',style: heading1.copyWith(color: generalWhite,fontSize: 20),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )




      ),
    );
  }
}


