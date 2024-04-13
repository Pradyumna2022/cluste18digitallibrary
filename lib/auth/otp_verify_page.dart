import 'dart:io';

import 'package:digital_library/auth/application_form.dart';
import 'package:digital_library/auth/phon_number_login.dart';
import 'package:digital_library/global/color.dart';
import 'package:digital_library/pages/common_hom_page.dart';
import 'package:digital_library/pages/student_bottom_bar_fee_home.dart';
import 'package:digital_library/pages/student_home_page.dart';
import 'package:digital_library/widgets/my_button.dart';
import 'package:digital_library/widgets/my_text_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pinput/pinput.dart';

// File? imageFile;
// String? mobileNumber;

class OtpVerifyPage extends StatefulWidget {
  const OtpVerifyPage({
    super.key,
  });

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
  final otpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(220, 226, 232, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 168, 224, 218),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 4, 88, 80),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      100,
                    ),
                    bottomRight: Radius.circular(100))),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    // height: MediaQuery.of(context).size.height * 0.65,
                    // width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 4, 162, 146),
                        borderRadius: BorderRadius.circular(20)),
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                "V E R I F Y   O T P",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Send OTP on ",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 5, 69, 63),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 152, 224, 217),
                                        borderRadius: BorderRadius.circular(7)),
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "${mobileNumber}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Pinput(
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: focusedPinTheme,
                              submittedPinTheme: submittedPinTheme,
                              validator: (s) {
                                return s == '2222' ? null : 'Pin is incorrect';
                              },
                              pinputAutovalidateMode:
                                  PinputAutovalidateMode.onSubmit,
                              showCursor: true,
                              onCompleted: (pin) => print(pin),
                            ),
                            MyButton(
                                title: 'Verify OTP',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    print(
                                        'good job----------------------- ${mobileNumber}');
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StudenHomeFeeBottomBar()),
                                        (route) => false);
                                  } else {
                                    print(
                                        'no please bhag ja-------------------');
                                  }
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
