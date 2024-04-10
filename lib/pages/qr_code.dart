import 'package:digital_library/global/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QrCodePage extends StatelessWidget {
  final String studentName;
  final String totalAmount;
  const QrCodePage(
      {super.key, required this.studentName, required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 20.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 152, 67, 67),
                    border: Border.all(color: blackColor, width: 1),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      studentName,
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Your Total Amount : $totalAmount',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: SizedBox(
                    width: double.infinity,
                    child: Image.asset('lib/icons/qucode.jpg'))),
          ],
        ),
      ),
    );
  }
}
