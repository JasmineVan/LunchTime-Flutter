import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/pages/home_api.dart';
import 'package:helloworld/pages/login.dart';
import 'package:helloworld/pages/otp.dart';
import 'package:helloworld/pages/product_detail.dart';
import 'package:helloworld/scroll_behavior.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    // return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Lunch Time',
      home: Login(),
      // home: Otp(),
      // home: HomeAPI(),
      // home: ProductDetail(index: 1),
    );
  }
}

// ---------------------------------

