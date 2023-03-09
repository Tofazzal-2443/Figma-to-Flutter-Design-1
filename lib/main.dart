import 'package:class27/pages/home_page.dart';
import 'package:class27/pages/login_screen/login_page.dart';
import 'package:class27/pages/nav_bar/nav_bar_page.dart';

import 'package:class27/pages/on_boarding_screen/on_boarding_page.dart';
import 'package:class27/pages/signup_screen/signup_page.dart';
import 'package:class27/pages/signup_screen/stepper1_page.dart';
import 'package:class27/pages/signup_screen/stepper2_page.dart';
import 'package:class27/pages/signup_screen/stepper3_page.dart';
import 'package:class27/pages/signup_screen/stepper4_page.dart';
import 'package:class27/pages/signup_screen/stepper5_page.dart';
import 'package:class27/pages/splash_screen/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: NabBarPage(),
    );
  }
}
