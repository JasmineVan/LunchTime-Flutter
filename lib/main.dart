import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/pages/login.dart';
import 'package:helloworld/pages/otp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lunch Time',
      home: Login(),
      // home: Otp(),
    );
  }
}
