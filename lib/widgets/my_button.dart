import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const MyButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: 48,
        width: double.infinity,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          style: OutlinedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 5, 69, 63),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
