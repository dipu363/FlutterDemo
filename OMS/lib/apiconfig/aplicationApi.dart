
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:oms/apiconfig/responseModel/baseResponse.dart';

const baseUrl = "http://aborong.com/orderapi/orderapi/";

class ApplicationApi{

  Dio dio = Dio() ;
  BuildContext context;

  ApplicationApi(this.context);

  Future<BaseResponse> getAllUser (String user) async {
    BaseResponse baseResponse;

    var url = baseUrl + "user/findByUser";
    var queryParamiter = {"userName": user};
    final response = await dio.get(url, queryParameters: queryParamiter);
    baseResponse = BaseResponse.fromJson(response.data);
    baseResponse = BaseResponse.fromJson(response.data);

    return baseResponse;
  }

}
