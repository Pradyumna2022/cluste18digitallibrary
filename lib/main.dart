import 'package:digital_library/pages/auth/application_form.dart';
import 'package:digital_library/pages/auth/log_in.dart';
import 'package:digital_library/pages/galery_page.dart';
import 'package:digital_library/pages/nested_page.dart';
import 'package:digital_library/pages/splash_page.dart';
import 'package:digital_library/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        //nested for the whole app control
        // theme: lightMode,
        home: SplashScreen());
  }
}
