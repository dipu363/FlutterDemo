import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Expanded(
                flex: 1,
                child: Column(
                  children: [],
                )),
             Expanded(
                flex: 5,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        print('edit profile');
                      },
                      child: ListTile(
                        leading:  const  SizedBox(

                          height: 40,
                          width: 40,
                          child: Card(
                            color: generalWhite,
                            child: CircleAvatar(

                              child: Icon(
                                Icons.person_outline,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        title: Text('Edit Profile' ,style: heading1.copyWith(fontSize: 15),),
                        trailing: const Icon(Icons.arrow_forward_ios,size: 20,),
                      ),
                    )
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  color: danger500,
                  border: Border.all(color: danger500),
                  borderRadius: BorderRadius.circular(31)),
              width: double.infinity,
              height: 48,
              child: Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: generalWhite, elevation: 0),
                      onPressed: () {},
                      child: const Text(
                        'Log Out',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: danger500,
                            fontSize: 16,
                            letterSpacing: .1,
                            fontFamily: 'SFProDisplay'),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
