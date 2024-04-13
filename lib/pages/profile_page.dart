import 'dart:io';

import 'package:digital_library/auth/application_form.dart';
import 'package:digital_library/widgets/my_button.dart';
import 'package:digital_library/widgets/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

File? imageFile;

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final nameController = TextEditingController();

  final idController = TextEditingController();

  final fNameController = TextEditingController();

  final mNameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final cpasswordController = TextEditingController();

  final aadharController = TextEditingController();

  void uploadImage() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    pickImage(ImageSource.camera);
                    Navigator.pop(context);
                  },
                  title: Text("Camera"),
                  leading: Icon(Icons.camera),
                ),
                ListTile(
                  onTap: () {
                    pickImage(ImageSource.gallery);
                    Navigator.pop(context);
                  },
                  title: Text("Gellery"),
                  leading: Icon(Icons.attach_file),
                )
              ],
            ),
          );
        });
  }

  void pickImage(ImageSource imageSource) async {
    try {
      final imageForPath = await ImagePicker().pickImage(source: imageSource);
      if (imageForPath == null) return;
      final findPath = File(imageForPath.path);
      setState(() {
        imageFile = findPath;
      });
    } catch (e) {
      print(e.toString() +
          '--------------------- ERROR OF THE IMAGE FILE---------------------');
    }
  }

  final List<String> items = ['Central Level', 'State Level', 'Both'];

  String? selectedValue;

  bool isChecked = true;

  bool isDropdownValueSelected = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    uploadImage();
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 60,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                    controller: idController,
                    validationText: 'Enter Your Unique ID',
                    hintText: 'ID'),
                SizedBox(
                  height: 5,
                ),
                MyTextField(
                    controller: nameController,
                    validationText: 'Enter Your Name',
                    hintText: 'Name'),
                SizedBox(
                  height: 5,
                ),
                MyTextField(
                    controller: emailController,
                    validationText: 'Enter Your Email',
                    hintText: 'Email'),
                SizedBox(
                  height: 5,
                ),
                MyTextField(
                    controller: passwordController,
                    validationText: 'Enter Your Strong Password',
                    hintText: 'Password'),
                SizedBox(
                  height: 5,
                ),
                MyTextField(
                    controller: cpasswordController,
                    validationText: 'Enter Your Confirm Password',
                    hintText: 'Confirm Password'),
                SizedBox(
                  height: 5,
                ),
                MyTextField(
                    controller: aadharController,
                    validationText: 'Enter Your Aadhar No',
                    hintText: 'Aadhar Card Number'),
                // SizedBox(
                //   height: 5,
                // ),
                MyButton(
                    title: 'Submit',
                    onPressed: () {
                      if (_formKey.currentState!.validate() &&
                          isDropdownValueSelected == true &&
                          isChecked == true) {
                        print('good job----------------------- ');
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             StudentHomePage()));
                      } else {
                        print('no please bhag ja-------------------');
                      }
                    }),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
