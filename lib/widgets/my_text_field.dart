import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String validationText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffxIcon;
  final String hintText;
  const MyTextField(
      {super.key,
      this.suffxIcon,
      this.keyboardType,
      required this.controller,
      required this.validationText,
      this.obscureText = false,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
          obscureText: obscureText,
          cursorColor: Colors.black,
          style:
              TextStyle(color: Colors.black, decoration: TextDecoration.none),
          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return validationText;
            }
          },
          keyboardType: keyboardType,
          decoration: InputDecoration(
            suffixIcon: suffxIcon,
            fillColor: Colors.amber[50],
            filled: true,
            contentPadding: EdgeInsets.only(left: 10),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black54),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.cyan, width: 3)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.black)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.black)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red)),
          )),
    );
  }
}
