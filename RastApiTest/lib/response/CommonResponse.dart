// To parse this JSON data, do
//
//     final commonResponse = commonResponseFromJson(jsonString);

import 'dart:convert';

import '../data/CodeModel.dart';

CommonResponse commonResponseFromJson(String str) =>
    CommonResponse.fromJson(json.decode(str));

String commonResponseToJson(CommonResponse data) => json.encode(data.toJson());

class CommonResponse {
  int? total;
  List<CodeModel>? data;
  bool? success;
  String? message;

  CommonResponse({
    this.total,
    this.data,
    this.success,
    this.message,
  });

  factory CommonResponse.fromJson(Map<String, dynamic> json) => CommonResponse(
        total: json["total"],
        data: List<CodeModel>.from(
            json["data"].map((x) => CodeModel.fromJson(x))),
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "success": success,
        "message": message,
      };
}
