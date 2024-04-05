import 'package:digital_library/pages/nested_page.dart';
import 'package:digital_library/widgets/my_button.dart';
import 'package:digital_library/widgets/my_text_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationForm extends StatefulWidget {
  const ApplicationForm({super.key});

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

  final List<String> items = [
    'Hindi',
    'English',
    'Math',
    'Science',
  ];

  String? selectedValue;
  bool isChecked = true;
  bool isDropdownValueSelected = false;
  final _formKey = GlobalKey<FormState>();
  // bool isButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Application Form",
          style: GoogleFonts.josefinSans(
              textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
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
                      'Select Subject',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      maxHeight: 200,
                      width: MediaQuery.of(context).size.width * 0.95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      offset: const Offset(0, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all(6),
                        thumbVisibility: MaterialStateProperty.all(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
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
              DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                color: Colors.grey, //color of dotted/dash line
                strokeWidth: 0.5, //thickness of dash/dots
                dashPattern: [1, 4],
                //dash patterns, 10 is dash width, 6 is space width
                child: Center(
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles(
                        type: FileType.custom,
                        allowedExtensions: ['pdf', 'doc', 'docx'],
                      );

                      if (result != null) {
                        // selectedFiles.add(result.files.first);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("File Selected"),
                              content: Text(
                                  "Do you want to store the selected file?"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); // Close the dialog
                                  },
                                  child: Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Store the selected files or perform any other action
                                    Navigator.pop(context); // Close the dialog
                                  },
                                  child: Text("Store"),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset('assets/images/uploadiconverify.png'),
                        SizedBox(width: Get.width * 0.02),
                        Text(
                          'National ID card',
                          style: Get.theme.textTheme.bodySmall!
                              .copyWith(color: Color(0xffCFCFCF)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                          print(isChecked);
                        });
                      }),
                  Text('Are you allowed to the term & conditions ?'),
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
                              builder: (context) => NestedPage()));
                    } else {
                      print('no please bhag ja-------------------');
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
