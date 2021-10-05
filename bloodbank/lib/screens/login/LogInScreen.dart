import 'package:bloodbank/api/ApplicationApi.dart';
import 'package:bloodbank/api/model/CodeModel.dart';
import 'package:bloodbank/api/response/CodeResponse.dart';
import 'package:bloodbank/utils/AppUtils.dart';
import 'package:bloodbank/utils/ApplicationMemory.dart';
import 'package:bloodbank/utils/CommonLabel.dart';
import 'package:bloodbank/utils/LabelConstant.dart';
import 'package:bloodbank/utils/TextStore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget{
  @override
  LogInScreenState createState() => LogInScreenState();


}

class LogInScreenState extends State<LogInScreen>{
  /*property*/
  var _loginKey = GlobalKey<FormState>();
  TextEditingController nidController = new TextEditingController();
  TextEditingController mobileNoController = new TextEditingController();
  bool _isLocalActive = false;
  bool isLoadingLabel = true;
  List<CodeModel> labelList = List.empty();



@override
  void initState() {
    // TODO: implement initState
    super.initState();

    initData();
  }

void initData() async {
  String lang = await ApplicationMemory.getString(ApplicationMemory.KEY_LANGUAGE);
  setState(() {
    _isLocalActive = lang !=  TextStore.comm_lang_English ? true : false;
  });
  await CommonLabel.initList(context);
  await CommonLabel.setLabel(_isLocalActive);
  if (await AppUtils.checkConnectivity()) {
    _getLabel();
  }
}

  @override
  Widget build(BuildContext context) {
  return Scaffold  (
    backgroundColor: Colors.white,
    body:  Text("Hello I am LogIn page"),

  );
  }
  /*================= HELPER =====================*/
  String lblNatId = "";
  String lblMobileNo = "";
  String loginLblLogin = "";
  String loginLblEnterMobileAndNID = "";
  String loginLbl10DigitRequired = "";

  void setLabel() {
    labelList.forEach((element) {
      if(element.CODE == LabelConstant.loginLblNatID){
        setState(() {
          lblNatId = _isLocalActive ? element.NAME_NATIVE : element.NAME_GLOBAL;
        });
      }else if(element.CODE == LabelConstant.loginLblMobileNo){
        setState(() {
          lblMobileNo = _isLocalActive ? element.NAME_NATIVE : element.NAME_GLOBAL;
        });
      }else if(element.CODE == LabelConstant.loginLblLogin){
        setState(() {
          loginLblLogin = _isLocalActive ? element.NAME_NATIVE : element.NAME_GLOBAL;
        });
      }else if(element.CODE == LabelConstant.loginLblEnterMobileAndNID){
        setState(() {
          loginLblEnterMobileAndNID = _isLocalActive ? element.NAME_NATIVE : element.NAME_GLOBAL;
        });
      }else if(element.CODE == LabelConstant.loginLbl10DigitRequired){
        setState(() {
          loginLbl10DigitRequired = _isLocalActive ? element.NAME_NATIVE : element.NAME_GLOBAL;
        });
      }
    });

  }

//all needed method in here
  void _getLabel() async{
    CodeResponse res = await ApplicationApi(context).getLabelText(LabelConstant.loginFormCode);
    setState(() {
      isLoadingLabel = false;
      if(res != null){
        labelList = res.data;
        setLabel();
      }
    });
  }




}

