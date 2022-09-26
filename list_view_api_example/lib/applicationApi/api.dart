
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:list_view_api_example/applicationApi/data/commonResponse.dart';

import 'data/login_response.dart';
import 'data/post.dart';


const baseUrl ='http://202.40.189.19/BloodBankAPI/api';
const bs ='http://api.sebacourier.com/public/userLogin?usertName=abc&password=987';
class ApplicationApi{

  Dio dio =  Dio();

  BuildContext buildContext ;


  ApplicationApi(this.buildContext);

  Future<CommonResponse> getAllPost() async{

   CommonResponse commonResponse;
    var url = baseUrl+ "/GetAllNationality";


    var response = await dio.get(url);
   commonResponse = CommonResponse.fromJson(response.data);

   print(commonResponse.message);

    return commonResponse;

  }

  Future<void> getuser() async{

    LoginResponse loginResponse;

    Response response = await dio.get(bs);
    loginResponse = LoginResponse.fromJson(response.data);//this line is fact

    print('Status  :: ${loginResponse.status}');
    print('Status  :: ${loginResponse.name}');



  }

}