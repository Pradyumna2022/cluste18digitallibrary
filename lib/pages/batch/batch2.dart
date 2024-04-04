import 'package:digital_library/global/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BatchTwo extends StatelessWidget {
  const BatchTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey.withOpacity(0.5),
            //   spreadRadius: 1,
            //   blurRadius: 1,
            //   offset: Offset(0, 3),
            // ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Timing ',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            letterSpacing: .5,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                  Text('10:00AM to 02:00 PM ',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            letterSpacing: .5,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fee ',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            letterSpacing: .5,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                  Text('\$ 300',
                      style: GoogleFonts.alata(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            letterSpacing: .5,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Student Name",
                      style: TextStyle(color: whiteColor),
                    ),
                    Text(
                      "Time",
                      style: TextStyle(color: whiteColor),
                    ),
                    Text(
                      "Present/Absent",
                      style: TextStyle(color: whiteColor),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(5)),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Riya",
                    style: TextStyle(color: blackColor),
                  ),
                  Text(
                    "06:00 AM TO 10:00 AM",
                    style: TextStyle(color: blackColor),
                  ),
                  Text(
                    "Present",
                    style: TextStyle(color: blackColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
