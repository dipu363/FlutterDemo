class Answer {
  String? ans;
  String? ansId;
  String? mark;

  Answer({this.ans, this.ansId, this.mark});

  Answer.fromJson(Map<String, dynamic> json) {
    ans = json['ans'];
    ansId = json['ans Id'];
    mark = json['mark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ans'] = ans;
    data['ans Id'] = ansId;
    data['mark'] = mark;
    return data;
  }
}