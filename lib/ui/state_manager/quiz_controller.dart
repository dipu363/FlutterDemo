import 'dart:convert';

import 'package:get/get.dart';
import 'package:internetconnectivitycheck/data/answer.dart';
import 'package:internetconnectivitycheck/data/collection/quiz_model.dart';


class QuizController extends GetxController {
  //TODO: Implement QuizController

  var model= QuizModel().obs;
  var questionAns =0.obs;




  @override
  void onInit() {
    model.value = QuizModel.fromJson(json.decode(jsonString));
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> selectdata(Answer data, var quizId)async{
    model.value.quizList!.where((element) => element.quizId == quizId).forEach((element) {
      element.givenAnswer = data.ansId;
    });
    questionAns.value = model.value.quizList!.where((element) => element.givenAnswer!.isNotEmpty).length;
    model.refresh();
  }

}
const jsonString = '''
{
   "questionSheetId":"101",
   "status":"",
   "mark": 30,
   "numberOfQuiz": 5,
   "quizList":[
      {
         "quizTitle":"What is java1 ",
         "quizId": 1,
          "correctAns":"102",
         "mark":5,
         "givenAns":"",
         "studentId":"sdfsdf999",
         "status": "",
         "ansList":[
            {
               "ans":"language",
               "ansId":"101",
               "mark": "2",
               "isSelected": false
            },
             {
               "ans":"language",
               "ansId":"102",
               "mark": "2",
               "isSelected": false
            }, {
               "ans":"language",
               "ansId":"103",
               "mark": "2",
               "isSelected": false
            }
             
         ]
        
      },
      {
         "quizTitle":"What is java 2 ",
         "quizId": 2,
          "correctAns":"101",
         "mark":5,
         "givenAns":"",
         "studentId":"sdfsdf999",
         "status": "",
         "ansList":[
            {
               "ans":"language",
               "ansId":"101",
               "mark": "2",
               "isSelected": false
            },
             {
               "ans":"language",
               "ansId":"102",
               "mark": "2",
               "isSelected": false
            }, {
               "ans":"language",
               "ansId":"103",
               "mark": "2",
               "isSelected": false
            }
            , {
               "ans":"aktar",
               "ansId":"104",
               "mark": "2",
               "isSelected": false
            }
             
         ]
        
      },
      {
         "quizTitle":"What is java 3 ",
         "quizId": 3,
          "correctAns":"103",
         "mark":5,
         "givenAns":"",
         "studentId":"sdfsdf999",
         "status": "",
         "ansList":[
            {
               "ans":"language",
               "ansId":"101",
               "mark": "2",
               "isSelected": false
            },
             {
               "ans":"language",
               "ansId":"102",
               "mark": "2",
               "isSelected": false
            }, {
               "ans":"language",
               "ansId":"103",
               "mark": "2",
               "isSelected": false
            }, {
               "ans":"kamal",
               "ansId":"104",
               "mark": "2",
               "isSelected": false
            }, {
               "ans":"jamal",
               "ansId":"105",
               "mark": "2",
               "isSelected": false
            }
             
         ]
        
      },
      {
         "quizTitle":"What is java 4",
         "quizId": 4,
          "correctAns":"102",
         "mark":5,
         "givenAns":"",
         "studentId":"sdfsdf999",
         "status": "",
         "ansList":[
            {
               "ans":"language",
               "ansId":"101",
               "mark": "2",
               "isSelected": false
            },
             {
               "ans":"language",
               "ansId":"102",
               "mark": "2",
               "isSelected": false
            }, {
               "ans":"language",
               "ansId":"103",
               "mark": "2",
               "isSelected": false
            }
             
         ]
        
      },
      {
         "quizTitle":"What is java 5",
         "quizId": 5,
          "correctAns":"102",
         "mark":5,
         "givenAns":"",
         "studentId":"sdfsdf999",
         "status": "",
         "ansList":[
            {
               "ans":"language",
               "ansId":"101",
               "mark": "2",
               "isSelected": false
            },
             {
               "ans":"language",
               "ansId":"102",
               "mark": "2",
               "isSelected": false
            }, {
               "ans":"language",
               "ansId":"103",
               "mark": "2",
               "isSelected": false
            }
             
         ]
        
      },
      {
         "quizTitle":"What is java 6",
         "quizId": 6,
          "correctAns":"103",
         "mark":5,
         "givenAns":"",
         "studentId":"sdfsdf999",
         "status": "",
         "ansList":[
            {
               "ans":"language",
               "ansId":"101",
               "mark": "2",
               "isSelected": false
            },
             {
               "ans":"language",
               "ansId":"102",
               "mark": "2",
               "isSelected": false
            }, {
               "ans":"language",
               "ansId":"103",
               "mark": "2",
               "isSelected": false
            }
             
         ]
        
      }
       
   ]
}
''';