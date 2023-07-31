import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/screen/create_new%20_password_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/home_Screen.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/screen/login_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/password_changed_success_screen.dart';
import 'package:internetconnectivitycheck/ui/screen/reset_password_screen.dart';
import 'package:internetconnectivitycheck/ui/state_manager/dependency_injection.dart';
import 'package:internetconnectivitycheck/ui/utils/app_colors.dart';
import 'package:internetconnectivitycheck/ui/widget/my_input_theme.dart';



Future<void> main()async {
  runApp(const MyApp());
  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Network Check ',
      theme: ThemeData(
       primarySwatch: Colors.blue,
        useMaterial3: true,
        inputDecorationTheme: MyInputTheme().theme(),
      ),
      home:const HomeScreen(),
    );
  }
}
