


import 'package:internetconnectivitycheck/data/answer.dart';

class Quiz {
  int? quizId;
  String? quizTitle;
  String? correctAnswer;
  int? mark ;
  String? givenAnswer;
  String? studentId;
  String? status;
  List<Answer>? ansList;

  Quiz(
      {this.quizId,
        this.quizTitle,
        this.correctAnswer,
        this.mark ,
        this.givenAnswer,
        this.studentId,
        this.status,
        this.ansList});

  Quiz.fromJson(Map<String, dynamic> json) {
    quizId = json['quizId'];
    quizTitle = json['quizTitle'];
    correctAnswer = json['correctAnswer'];
    mark = json['mark'];
    givenAnswer = json['givenAnswer'];
    studentId = json['studentId'];
    status = json['status'];
    if (json['ansList'] != null) {
      ansList = <Answer>[];
      json['ansList'].forEach((v) {
        ansList!.add(Answer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['quizId'] = quizId;
    data['quizTitle'] = quizTitle;
    data['correctAnswer'] = correctAnswer;
    data['mark'] = mark;
    data['givenAnswer'] = givenAnswer;
    data['studentId'] = studentId;
    data['status'] = status;
    if (ansList != null) {
      data['ansList'] = ansList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
