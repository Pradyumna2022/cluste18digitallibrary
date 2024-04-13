import 'package:digital_library/auth/application_form.dart';
import 'package:digital_library/auth/phon_number_login.dart';
import 'package:digital_library/auth/admin_login.dart';
import 'package:digital_library/auth/operator_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseOne extends StatelessWidget {
  const ChooseOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => PhoneNubmerLogin()));
                    },
                    child: Text(
                      'Student Login',
                      style: TextStyle(color: Colors.white70),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white10),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => AdminLogin()));
                    },
                    child: Text(
                      'Admin Login',
                      style: TextStyle(color: Colors.white70),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white10),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => OperatorLogin()));
                    },
                    child: Text(
                      'Operator Login',
                      style: TextStyle(color: Colors.white70),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white10),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
