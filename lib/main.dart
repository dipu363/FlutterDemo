import 'package:flutter/material.dart';
import 'package:internetconnectivitycheck/ui/screen/home_Screen.dart';
import 'package:get/get.dart';
import 'package:internetconnectivitycheck/ui/state_manager/dependency_injection.dart';



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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const HomeScreen(),
    );
  }
}
