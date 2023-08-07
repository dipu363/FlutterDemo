

import 'package:internetconnectivitycheck/data/quiz.dart';

class QuizModel {
  String? questionSheetID;
  String? status;
  int? mark;
  int? numberOfQuiz;
  List<Quiz>? quizList;

  QuizModel(
      {this.questionSheetID,
        this.status,
        this.mark,
        this.numberOfQuiz,
        this.quizList});

  QuizModel.fromJson(Map<String, dynamic> json) {
    questionSheetID = json['questionSheetID'];
    status = json['status'];
    mark = json['mark'];
    numberOfQuiz = json['numberOfQuiz'];
    if (json['quizList'] != null) {
      quizList = <Quiz>[];
      json['quizList'].forEach((v) {
        quizList!.add(Quiz.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['questionSheetID'] = questionSheetID;
    data['status'] = status;
    data['mark'] = mark;
    data['numberOfQuiz'] = numberOfQuiz;
    if (quizList != null) {
      data['quizList'] = quizList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}




