import 'package:bloodbank/api/model/CodeModel.dart';

class CodeResponse{
  bool success;
  String message;
  int total;
  List<CodeModel> data;


  CodeResponse.fromJson(Map json)
      : success = json['success'],
        message = json['message'] == null ? "" : json['message'],
        total = json['total'],
        data = (json['data'] as List).map((i) => CodeModel.fromJson(i)).toList()
  ;

}