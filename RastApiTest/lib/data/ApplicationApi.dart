

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:rastapitest/response/CommonResponse.dart';

const baseUrl = "http://202.40.189.19/BloodBankAPI/api/";

class ApplicationApi{

  Dio dio = Dio();
  BuildContext buildContext ;
  ApplicationApi(this.buildContext);


  Future<CommonResponse> getNationality()async{

    CommonResponse cRes ;
      var url = baseUrl + "GetAllNationality";
      final response = await dio.get(url);
      cRes = CommonResponse.fromJson(response.data);
    return cRes;

  }


}