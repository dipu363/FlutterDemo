import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {

  String success;
  String status;
  String code;
  String id;
  String roll;
  String name;
  String mobile;

  LoginResponse({
    required this.success,
    required this.status,
    required this.code,
    required this.id,
    required this.roll,
    required this.name,
    required this.mobile,
  });



  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    success: json["success"],
    status: json["status"],
    code: json["code"],
    id: json["id"],
    roll: json["roll"],
    name: json["name"],
    mobile: json["mobile"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "code": code,
    "id": id,
    "roll": roll,
    "name": name,
    "mobile": mobile,
  };
}
