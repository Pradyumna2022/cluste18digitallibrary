import 'package:digital_library/pages/nested_page.dart';
import 'package:digital_library/widgets/my_button.dart';
import 'package:digital_library/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
                    const Text(
                      'W E L C O M E  B A C K',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 35),
                      child: MyTextField(
                        controller: emailController,
                        hintText: 'Email',
                        validationText: 'Enter Your Email',
                      ),
                    ),
                    if (!isVisible)
                      MyTextField(
                        obscureText: isVisible,
                        controller: passwordController,
                        hintText: 'Password',
                        validationText: 'Enter Your Password',
                      ),
                    if (!isVisible)
                      MyButton(
                        title: 'Login',
                        onPressed: () {
                          try {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NestedPage()));
                            }
                          } catch (e) {
                            print(e.toString());
                          }
                        },
                      ),
                    if (isVisible)
                      MyButton(
                        title: 'Forgot Password',
                        onPressed: () {
                          print('object');
                          if (_formKey.currentState!.validate()) {}
                        },
                      ),
                    if (!isVisible)
                      GestureDetector(
                        onTap: () {
                          print('FORGOT PASSWORD');
                          setState(() {
                            isVisible = true;
                          });

                          /// FORGOT PASSWORD HERE FUNCTION **************
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              border:
                                  Border.all(color: Colors.white, width: 0.1),
                              borderRadius: BorderRadius.circular(10)),
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
