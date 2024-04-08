import 'package:digital_library/global/color.dart';
import 'package:flutter/material.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Color.fromARGB(255, 6, 2, 12),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/icons/qrcode.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Scan And Pay!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 187, 181, 181),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
