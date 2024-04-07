import 'package:digital_library/global/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bacth1Boys extends StatelessWidget {
  Bacth1Boys({super.key});
  List<String> boysName = [
    'Sumit Mauray',
    'Aditya Yadav',
    'Vivek Verma',
    'Saurabh Yadav'
  ];
  List<String> boysTime = [
    '01:00 AM to 03:12 PM',
    '01:15 AM to 03:25 PM',
    '01:09 AM to 03:50 PM',
    '01:05 AM to 03:32 PM',
  ];
  List<String> boysAtendcn = ['Present', 'Present', 'Present', 'Present'];
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListView(
        physics: BouncingScrollPhysics(),
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Image.asset(
          //         'lib/icons/clock.png',
          //         color: Color.fromARGB(255, 236, 131, 3),
          //         width: 20,
          //       ),
          //       // Text('Timing',
          //       //     style: GoogleFonts.alata(
          //       //       textStyle: TextStyle(
          //       //           color: Colors.black45,
          //       //           letterSpacing: .5,
          //       //           fontSize: 15,
          //       //           fontWeight: FontWeight.bold),
          //       //     )),
          //       Text('06:00AM to 10:00 AM ',
          //           style: GoogleFonts.josefinSans(
          //             textStyle: TextStyle(
          //                 color: Colors.black,
          //                 letterSpacing: .5,
          //                 fontSize: 17,
          //                 fontWeight: FontWeight.bold),
          //           )),
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Image.asset(
          //         'lib/icons/fees.png',
          //         color: Colors.red,
          //         width: 20,
          //       ),
          //       // Text('Fee ',
          //       //     style: GoogleFonts.alata(
          //       //       textStyle: TextStyle(
          //       //           color: Colors.black45,
          //       //           letterSpacing: .5,
          //       //           fontSize: 15,
          //       //           fontWeight: FontWeight.bold),
          //       //     )),
          //       Text('\$ 300',
          //           style: GoogleFonts.josefinSans(
          //             textStyle: TextStyle(
          //                 color: Colors.black,
          //                 letterSpacing: .5,
          //                 fontSize: 17,
          //                 fontWeight: FontWeight.bold),
          //           )),
          //     ],
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.only(top: 10),
          //   height: 35,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.black,
          //     borderRadius: BorderRadius.circular(5),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.withOpacity(0.5),
          //         // spreadRadius: 1,
          //         blurRadius: 1,
          //         // offset: Offset(0, 3),
          //       ),
          //     ],
          //   ),
          //   child: const Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 10.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "Student Name",
          //           style: TextStyle(
          //               color: whiteColor,
          //               fontSize: 17,
          //               fontWeight: FontWeight.bold),
          //         ),
          //         Text(
          //           "Time",
          //           style: TextStyle(
          //               color: whiteColor,
          //               fontSize: 17,
          //               fontWeight: FontWeight.bold),
          //         ),
          //         Text(
          //           "Present/Absent",
          //           style: TextStyle(
          //               color: whiteColor,
          //               fontSize: 17,
          //               fontWeight: FontWeight.bold),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: boysName.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 255, 245),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'lib/icons/name.png',
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Name",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Text(boysName[index].toString(),
                                style: GoogleFonts.josefinSans(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: .5,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'lib/icons/clck.png',
                                  width: 17,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Time",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Text(boysTime[index].toString(),
                                style: GoogleFonts.josefinSans(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: .5,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'lib/icons/attend.png',
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Attendance",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Text(boysAtendcn[index].toString(),
                                style: GoogleFonts.josefinSans(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: .5,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
