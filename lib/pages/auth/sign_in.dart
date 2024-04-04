import 'dart:ffi';
import 'dart:io';
import 'package:digital_library/pages/nested_page.dart';
import 'package:digital_library/widgets/my_button.dart';
import 'package:digital_library/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

File? imageFile;

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  /// CREATE A METHOD FOR USER EMAIL AND PASSWORD ALSO TAKE IMAGE FOR -------
  // void singin(String email, String password) async {
  //   if (email.isEmpty && password.isEmpty && imageFile == null) {
  //     ToastClass().showToastMessage('Please Enter required Fields');
  //   } else {
  //     UserCredential? userCredential;
  //     try {
  //       userCredential = await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(email: email, password: password)
  //           .then((value) {
  //         uploadImageFirebase();
  //       }).onError((error, stackTrace) {
  //         print(error.toString() +
  //             '---------------------- create user credencial time error --------------------');
  //       });
  //     } catch (e) {}
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'S I G N  I N',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: MyTextField(
                        controller: nameController,
                        hintText: 'Name',
                        validationText: 'Enter Your Name',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                      child: MyTextField(
                        controller: emailController,
                        hintText: 'Email',
                        validationText: 'Enter Your Email',
                      ),
                    ),
                    MyTextField(
                      obscureText: true,
                      controller: passwordController,
                      hintText: 'Password',
                      validationText: 'Enter Your Password',
                    ),
                    MyButton(
                      title: 'Signin',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NestedPage()));
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
