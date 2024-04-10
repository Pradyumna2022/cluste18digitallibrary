import 'package:digital_library/auth/application_form.dart';
import 'package:digital_library/pages/galery_page.dart';
import 'package:digital_library/pages/nested_page.dart';
import 'package:digital_library/pages/qr_code.dart';
import 'package:digital_library/pages/splash_page.dart';
import 'package:digital_library/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
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
