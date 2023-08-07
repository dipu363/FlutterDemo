
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/data/answer.dart';
import 'package:internetconnectivitycheck/data/quiz.dart';
import 'package:internetconnectivitycheck/ui/state_manager/quiz_controller.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';

class QuestionPaperScreen extends StatelessWidget {
  QuestionPaperScreen({Key? key}) : super(key: key);
  final QuizController controller = Get.put(QuizController());
  @override
  Widget build(BuildContext context) {
    // print(model);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: dreamBlue,
          title: Text(
            'Quiz Test',
            style:heading1,
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              bottom: 0,
              child:
              Obx(() =>controller.model.value.quizList!.isNotEmpty?
              ListView.builder(
                itemCount:controller.model.value.quizList?.length,
                shrinkWrap: true,
                // physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  Quiz quizListData = controller.model.value.quizList![index];
                  return question(quizListData, index, quizListData.quizId);
                },
              )
                  : SizedBox()),
            ),
            Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: InkWell(
                  onTap: () {
                    Get.defaultDialog(
                      backgroundColor: generalWhite,
                      barrierDismissible: false,
                      title: 'Sorry you have field you test?',
                      titleStyle: const TextStyle(color: danger500),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t worry you can retake or test now of latter!',
                            style: heading1,
                          ),
                          const SizedBox(height: 100),
                          Text(
                            '2/10',
                            style: heading1,
                          ),
                        ],
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      actions: [
                        Container(
                          width: double.infinity,
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
                            child: const Text(
                              'Retake',
                              style: TextStyle(color: generalWhite),
                            ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => Text("${controller.questionAns.value}/ ${controller.model.value.quizList?.length}",
                              style: heading1
                                  .copyWith(color: generalWhite, fontSize: 20)),),
                          Text(
                            'Submit Quiz',
                            style: heading1
                                .copyWith(color: generalWhite, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }

  Widget question(Quiz data, var index, var quizId) {
    // print("quizId id is : ${quizId}  : ${data.givenAns}");
    return Column(
      children: [
        Text(
          'Question ${index + 1}:  ${data.quizTitle}?',
          style: heading1.copyWith(fontSize: 18),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: data.ansList?.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              Answer list = data.ansList![index];
              return InkWell(
                //highlightColor: Colors.red,
                splashColor: Colors.blueAccent,
                onTap: () {
                  controller.selectdata(list, quizId);
                  // setState(() {
                  //   data.ansList!.forEach((element) => element.isSelected = false);
                  //   data.ansList![index].isSelected = true;
                  // });
                },
                child: RadioItem(
                  list,
                  data.givenAnswer,
                ),
              );
              // RadioItem(item: list,);
            }),
        const SizedBox(height: 30,
          child: Text(""),)
      ],
    );
  }
  Widget RadioItem(Answer? item,var givenAns){

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Text('${item!.ans}', style: heading1.copyWith(fontSize: 14),),
              ),
              Container(
                height: 24.0,
                width: 24.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: Center(
                  child: Image.asset(item.ansId == givenAns
                      ? 'assets/images/checkmark-circle-fill.png'
                      : 'assets/images/checkmarkoval.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            height: 1,
            color: neutralBlack300,
          )
        ],
      ),
    );
  }
}