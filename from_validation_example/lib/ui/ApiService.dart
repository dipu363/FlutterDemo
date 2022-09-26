import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:from_validation_example/ui/baseResponse.dart';
const baseUrl = "http://aborong.com/orderapi/orderapi/";
class ApiService {


  Dio dio = Dio();
  BuildContext buildContext;

  ApiService(this.buildContext);

  Future<BaseResponse> getUsers(String userName) async{
      BaseResponse baseResponse ;

      var url = baseUrl + "user/findByUser" ;
      var queryParamiter = {"userName": userName};
      final response = await dio.get(url,queryParameters: queryParamiter);
      baseResponse = BaseResponse.fromJson(response.data);
      baseResponse = BaseResponse.fromJson(response.data);
    return baseResponse;


  }
}