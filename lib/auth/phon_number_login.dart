import 'dart:io';

import 'package:digital_library/auth/application_form.dart';
import 'package:digital_library/auth/otp_verify_page.dart';
import 'package:digital_library/global/color.dart';
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

// File? imageFile;
String? mobileNumber;

class PhoneNubmerLogin extends StatelessWidget {
  PhoneNubmerLogin({super.key});

  final phonecontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                                "W E L C O M E   B A C K",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            MyTextField(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10)
                              ],
                              keyboardType: TextInputType.phone,
                              controller: phonecontroller,
                              validationText: 'Enter Your Phone Number',
                              hintText: 'Phone',
                            ),
                            MyButton(
                                title: 'Login',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    mobileNumber =
                                        phonecontroller.text.toString();
                                    print(mobileNumber.toString() +
                                        '--------------------------ye phone wla mobile');
                                    print('good job----------------------- ');
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OtpVerifyPage()));
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
