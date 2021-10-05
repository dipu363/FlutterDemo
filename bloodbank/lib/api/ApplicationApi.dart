import 'package:bloodbank/api/response/CodeResponse.dart';
import 'package:bloodbank/utils/CommonLabel.dart';

import 'package:bloodbank/utils/dialog/AppToast.dart';
import 'package:dio/dio.dart';

import 'package:flutter/cupertino.dart';

//const baseUrl = "https://rms.rufaida.com.my/BloodBankAPI/api/"; //live
// const baseUrl = "http://100.43.0.22/BloodBankAPI/api/"; //local
const baseUrl = "http://202.40.189.19/BloodBankAPI/api/"; //local

class ApplicationApi{
  Dio dio = Dio();
  BuildContext context;
  ApplicationApi(this.context);

  Future<CodeResponse> getLabelText(formCode) async {
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> call getLabelText $formCode");
   late CodeResponse res;
    try {
      var url = baseUrl + "GetLabelText";
      var queryParameters = {"formcode": formCode};
      final response = await dio.get(url, queryParameters : queryParameters);
      res = CodeResponse.fromJson(response.data);
    } catch (e) { _onError(e, false);}
    return res;
  }


 // ========================== UTILS ==========================//
  void _onError(e, isLoaded){
    if(isLoaded){
      Navigator.pop(context);
      AppToast(context).showToast(CommonLabel.commonConnectServer, AppToast.ERROR, AppToast.LONG);
    }
    print(e);
  }
}