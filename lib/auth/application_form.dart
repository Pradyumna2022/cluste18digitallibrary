import 'dart:io';

import 'package:digital_library/auth/student_login.dart';
import 'package:digital_library/global/color.dart';
import 'package:digital_library/pages/nested_page.dart';
import 'package:digital_library/widgets/my_button.dart';
import 'package:digital_library/widgets/my_text_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

File? imageFile;

class ApplicationForm extends StatefulWidget {
  ApplicationForm({super.key});

  @override
  State<ApplicationForm> createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  final nameController = TextEditingController();

  final fNameController = TextEditingController();

  final mNameController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

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

  final List<String> items = [
    'Central',
    'State',
    'Math',
    'Science',
  ];

  String? selectedValue;

  bool isChecked = true;

  bool isDropdownValueSelected = false;

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
            height: MediaQuery.of(context).size.height * 0.4,
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
                  Text(
                    "G U A R D I A N",
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
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
                            InkWell(
                              onTap: () {
                                uploadImage();
                              },
                              child: imageFile == null
                                  ? CircleAvatar(
                                      radius: 50,
                                      backgroundColor:
                                          Color.fromARGB(255, 6, 62, 56),
                                      // child: Text("Upload Image"),
                                    )
                                  : CircleAvatar(
                                      radius: 50,
                                      backgroundImage: FileImage(imageFile!),
                                    ),
                            ),
                            MyTextField(
                              controller: nameController,
                              validationText: 'Enter Your Name',
                              hintText: 'Name',
                            ),
                            MyTextField(
                              controller: fNameController,
                              validationText: 'Enter Your Father Name',
                              hintText: 'Father Name',
                            ),
                            MyTextField(
                              controller: mNameController,
                              validationText: 'Enter Your Mother Name',
                              hintText: 'Mother Name',
                            ),
                            MyTextField(
                              controller: emailController,
                              validationText: 'Enter Your Email',
                              hintText: 'Email',
                            ),
                            MyTextField(
                              controller: phoneController,
                              validationText: 'Enter Your Phone',
                              hintText: 'Phone',
                              keyboardType: TextInputType.phone,
                            ),

                            //********************************** */
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  // barrierColor: Colors.amber,
                                  isExpanded: true,
                                  hint: Text(
                                    'Select Course',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  items: items
                                      .map((String item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value;
                                      isDropdownValueSelected = true;
                                    });
                                  },
                                  buttonStyleData: ButtonStyleData(
                                    height: 50,
                                    // width: 160,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.black26,
                                      ),
                                      color: Colors.white,
                                    ),
                                    elevation: 1,
                                  ),
                                  iconStyleData: const IconStyleData(
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                    ),
                                    iconSize: 14,
                                    iconEnabledColor: Colors.black,
                                    iconDisabledColor: Colors.grey,
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    maxHeight: 200,
                                    width: MediaQuery.of(context).size.width *
                                        0.78,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Colors.white,
                                    ),
                                    offset: const Offset(0, 0),
                                    scrollbarTheme: ScrollbarThemeData(
                                      radius: const Radius.circular(40),
                                      thickness: MaterialStateProperty.all(6),
                                      thumbVisibility:
                                          MaterialStateProperty.all(true),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    height: 40,
                                    padding:
                                        EdgeInsets.only(left: 14, right: 14),
                                  ),
                                ),
                              ),
                            ),
                            // if (isButtonClicked)
                            //   Text(
                            //     'Please select a subject',
                            //     style: TextStyle(color: Colors.red),
                            //   ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: MyTextField(
                                controller: aadharController,
                                validationText: 'Enter Your Aadhar No',
                                hintText: 'Aadhar Card',
                                suffxIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.upload),
                                ),
                              ),
                            ),
                            // DottedBorder(
                            //   borderType: BorderType.RRect,
                            //   radius: Radius.circular(12),
                            //   color: Colors.grey, //color of dotted/dash line
                            //   strokeWidth: 0.5, //thickness of dash/dots
                            //   dashPattern: [1, 4],
                            //   //dash patterns, 10 is dash width, 6 is space width
                            //   child: Center(
                            //     child: ElevatedButton(
                            //       style: ElevatedButton.styleFrom(
                            //           backgroundColor: Colors.black),
                            //       onPressed: () async {
                            //         FilePickerResult? result =
                            //             await FilePicker.platform.pickFiles(
                            //           type: FileType.custom,
                            //           allowedExtensions: ['pdf', 'doc', 'docx'],
                            //         );

                            //         if (result != null) {
                            //           // selectedFiles.add(result.files.first);
                            //           showDialog(
                            //             context: context,
                            //             builder: (context) {
                            //               return AlertDialog(
                            //                 title: Text("File Selected"),
                            //                 content: Text(
                            //                     "Do you want to store the selected file?"),
                            //                 actions: [
                            //                   TextButton(
                            //                     onPressed: () {
                            //                       Navigator.pop(
                            //                           context); // Close the dialog
                            //                     },
                            //                     child: Text("Cancel"),
                            //                   ),
                            //                   TextButton(
                            //                     onPressed: () {
                            //                       // Store the selected files or perform any other action
                            //                       Navigator.pop(
                            //                           context); // Close the dialog
                            //                     },
                            //                     child: Text("Store"),
                            //                   ),
                            //                 ],
                            //               );
                            //             },
                            //           );
                            //         }
                            //       },
                            //       child: Row(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           // Image.asset('assets/images/uploadiconverify.png'),
                            //           SizedBox(width: Get.width * 0.02),
                            //           Text(
                            //             'National ID card',
                            //             style: Get.theme.textTheme.bodySmall!
                            //                 .copyWith(color: Color(0xffCFCFCF)),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                    fillColor:
                                        MaterialStateProperty.resolveWith<
                                            Color>((Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.disabled)) {
                                        return Color.fromARGB(
                                            255, 230, 235, 234);
                                      }
                                      return Color.fromARGB(255, 10, 62, 57);
                                    }),
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = !isChecked;
                                        print(isChecked);
                                      });
                                    }),
                                Text(
                                  'Are you allowed to the term & conditions ?',
                                  style: TextStyle(color: whiteColor),
                                ),
                              ],
                            ),
                            MyButton(
                                title: 'Submit',
                                onPressed: () {
                                  if (_formKey.currentState!.validate() &&
                                      isDropdownValueSelected == true &&
                                      isChecked == true) {
                                    print('good job----------------------- ');
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                NestedPage()));
                                  } else {
                                    print(
                                        'no please bhag ja-------------------');
                                  }
                                }),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Already have an Account ?",
                                    style: TextStyle(color: Colors.grey[200]),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const StudentLoginForm()));
                                    },
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
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
