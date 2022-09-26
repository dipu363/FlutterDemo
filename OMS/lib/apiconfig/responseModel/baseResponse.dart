

import 'package:oms/apiconfig/requestModel/UserInfo.dart';

class BaseResponse {
  bool? success;
  bool? info;
  bool? warning;
  Null? message;
  bool? valid;
  Null? id;
  Null? model;
  Null? data;
  Null? items;
  UserInfo? obj;

  BaseResponse(
      {this.success,
        this.info,
        this.warning,
        this.message,
        this.valid,
        this.id,
        this.model,
        this.data,
        this.items,
        this.obj});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    info = json['info'];
    warning = json['warning'];
    message = json['message'];
    valid = json['valid'];
    id = json['id'];
    model = json['model'];
    data = json['data'];
    items = json['items'];
    obj = json['obj'] != null ? UserInfo.fromJson(json['obj']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['success'] = this.success;
    data['info'] = this.info;
    data['warning'] = this.warning;
    data['message'] = this.message;
    data['valid'] = this.valid;
    data['id'] = this.id;
    data['model'] = this.model;
    data['data'] = this.data;
    data['items'] = this.items;
    if (this.obj != null) {
      data['obj'] = this.obj!.toJson();
    }
    return data;
  }


}