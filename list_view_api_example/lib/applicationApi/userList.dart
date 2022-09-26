import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_view_api_example/applicationApi/api.dart';
import 'package:list_view_api_example/applicationApi/data/commonResponse.dart';
import 'package:list_view_api_example/applicationApi/data/login_response.dart';
import 'package:list_view_api_example/applicationApi/data/post.dart';

import 'data/commonData.dart';
class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {

 List<Data> resDatalist =[];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUsers();
    _getUs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: resDatalist.length,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: Card(color: Colors.lightBlueAccent,elevation: 10,borderOnForeground: true,semanticContainer: true,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading:  Text(resDatalist[index].cODE.toString(),),
                  title: Text(resDatalist[index].sHORTNAME.toString()),subtitle: Text(resDatalist[index].nAMEGLOBAL.toString()),
                  style: ListTileStyle.list,
                  onTap: (){
                   var cuntry = resDatalist[index].nAMEGLOBAL.toString();
                    _showDailog( 'Cuntry name is $cuntry');
                  },
                )
              ],
            ),

            ),
          );
          }),

      );


  }


  _showDailog(String content){



  AlertDialog  alertDialog = AlertDialog(
    title: Text('Alert'),
    content: Text(content),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alertDialog;
    },
  );

  }
  void _getUsers() async {
    CommonResponse cRes = await ApplicationApi(context).getAllPost();
    if (cRes != null){
      resDatalist = cRes.data!;
    }
    print(resDatalist.length.toString());
  }

  void _getUs() async {
  await ApplicationApi(context).getuser();

  }
}
