import 'dart:async';
import 'package:digital_library/auth/application_form.dart';
import 'package:digital_library/pages/common_hom_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // final box = GetStorage();
    // Timer.periodic(Duration(seconds: 5), (timer) {
    //   if (box.read('emailKey') != null) {
    //     Navigator.pushAndRemoveUntil(
    //         context,
    //         MaterialPageRoute(builder: (context) => HomePage()),
    //         (route) => false);
    //   } else {
    //     Navigator.pushAndRemoveUntil(
    //         context,
    //         MaterialPageRoute(builder: (context) => LoginPage()),
    //         (route) => false);
    //   }
    // });
    Timer.periodic(Duration(seconds: 4), (timer) {
      if (mounted) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => CommonHomePage()),
            (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/icons/digital li.jpg',
                width: 200,
              )
            ],
          ),
        ));
  }
}
