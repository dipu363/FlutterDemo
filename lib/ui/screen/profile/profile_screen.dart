import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/screen/home_Screen.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/utils/style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isNotificationAllow = true;
  bool _isPromoted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 130,
                    width: 130,
                    child: CircleAvatar(
                        child: Image.asset(
                      'assets/images/useravatar.png',
                      height: 130,
                      width: 130,
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Tasbiul Alom', style: heading1),
                  Text('Parents', style: heading2)
                ],
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: generalWhite,
                      border: Border.all(width: 1, color: neutralBlack300),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            print('edit profile');
                          },
                          child: ListTile(
                            leading: const SizedBox(
                              height: 35,
                              width: 35,
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.person_outline,
                                  size: 20,
                                ),
                              ),
                            ),
                            title: Text(
                              'Edit Profile',
                              style: heading1.copyWith(fontSize: 20),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Settings',
                              style: heading2.copyWith(fontSize: 20)),
                        ),
                        ListTile(
                            leading: const SizedBox(
                              height: 30,
                              width: 30,
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.notifications_active_outlined,
                                  size: 20,
                                ),
                              ),
                            ),
                            title: Text(
                              'Course',
                              style: heading1.copyWith(fontSize: 20),
                            ),
                            subtitle: Text(
                              'Receive notification about course progress remainders and activity',
                              style: heading2,
                            ),
                            trailing: Switch(
                              value: _isNotificationAllow,
                              onChanged: (bool value) => setState(() =>
                                  _isNotificationAllow = !_isNotificationAllow),
                              activeColor: generalWhite,
                              activeTrackColor: dreamBlue,
                              inactiveThumbColor: generalWhite,
                              inactiveTrackColor: dreamBlue.withOpacity(.3),
                            )),
                        ListTile(
                            leading: const SizedBox(
                              height: 30,
                              width: 30,
                              child: CircleAvatar(
                                  child: Icon(
                                Icons.notifications_active_outlined,
                                size: 20,
                              )),
                            ),
                            title: Text(
                              'Promotions',
                              style: heading1.copyWith(fontSize: 20),
                            ),
                            subtitle: Text(
                              'Receive offers and promotions',
                              style: heading2,
                            ),
                            trailing: Switch(
                              value: _isPromoted,
                              onChanged: (bool value) =>
                                  setState(() => _isPromoted = value),
                              activeColor: generalWhite,
                              activeTrackColor: dreamBlue,
                              inactiveThumbColor: generalWhite,
                              inactiveTrackColor: dreamBlue.withOpacity(.3),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Support',
                              style: heading2.copyWith(fontSize: 20)),
                        ),
                        InkWell(
                          onTap: () {
                            print('support call');
                          },
                          child: ListTile(
                            leading: SizedBox(
                              height: 35,
                              width: 35,
                              child: CircleAvatar(
                                  child: Image.asset(
                                'assets/images/supportimage.png',
                                width: 20,
                                height: 20,
                              )),
                            ),
                            title: Text(
                              'Support Call',
                              style: heading1.copyWith(fontSize: 20),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('App details or version');
                          },
                          child: ListTile(
                            leading: const SizedBox(
                              height: 35,
                              width: 35,
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.person_outline,
                                  size: 20,
                                ),
                              ),
                            ),
                            title: Text(
                              'App details or version',
                              style: heading1.copyWith(fontSize: 20),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: danger500,
                      border: Border.all(color: danger500),
                      borderRadius: BorderRadius.circular(30)),
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: generalWhite, elevation: 0),
                      onPressed: () {
                        Get.defaultDialog(
                          backgroundColor: generalWhite,
                          barrierDismissible: false,
                          title: 'Are you sure log out?',
                          content: const Text('Log out your account'),
                          contentPadding: const EdgeInsets.all(10),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: generalWhite,
                                      border: Border.all(color: dreamBlue),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: generalWhite, elevation: 0),
                                    child: const Text('Cancel'),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: generalWhite,
                                      border: Border.all(color: danger500),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.off(const HomeScreen());
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: generalWhite, elevation: 0),
                                    child: const Text('Log Out'),
                                  ),
                                ),
                              ],
                            ),
                          ],

                        );
                      },
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
