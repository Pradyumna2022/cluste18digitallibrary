import 'package:digital_library/global/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentFeeWidget extends StatelessWidget {
  StudentFeeWidget({super.key});
  List<String> boysName = [
    'Sumit Mauray',
    'Aditya Yadav',
    'Vivek Verma',
    'Saurabh Yadav',
    'Sumit Mauray',
    'Aditya Yadav',
    'Vivek Verma',
    'Saurabh Yadav'
  ];
  List<String> boysDate = [
    '01/June/2024',
    '07/August/2024',
    '21/May/2024',
    '01/July/2024',
    '01/June/2024',
    '07/August/2024',
    '21/May/2024',
    '01/July/2024',
  ];
  List<String> boysAmount = [
    '\$ 325',
    '\$ 712',
    '\$ 275',
    '\$ 448',
    '\$ 425',
    '\$ 412',
    '\$ 475',
    '\$ 448'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            // margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red.shade300,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/icons/payday.png',
                  width: 20,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Payment Due",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: boysName.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 2),
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
                                  style: GoogleFonts.ptSans(
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
                                    'lib/icons/duedate.png',
                                    width: 17,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Due Date",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Text(boysDate[index].toString(),
                                  style: GoogleFonts.ptSans(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        // letterSpacing: .5,
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
                                    'lib/icons/amount.png',
                                    width: 15,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Amount",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Text(boysAmount[index].toString(),
                                  style: GoogleFonts.ptSans(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        letterSpacing: .5,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          // width: double.infinity,
                          // alignment: Alignment.bottomRight,
                          // margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            color: Colors.green.shade500,
                          ),
                          child: Center(
                              child: Text(
                            "Pay Now",
                            style: TextStyle(color: whiteColor),
                          )),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             "Student Name",
            //             style: TextStyle(color: Colors.grey),
            //           ),
            //           Text("Sidhuman"),
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(
            //           horizontal: 10.0, vertical: 10),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             "Due Date",
            //             style: TextStyle(color: Colors.grey),
            //           ),
            //           Text("13 June 2024"),
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             "Amount",
            //             style: TextStyle(color: Colors.grey),
            //           ),
            //           Text("\$ 1325"),
            //         ],
            //       ),
            //     ),
            // Container(
            //   width: double.infinity,
            //   // alignment: Alignment.bottomRight,
            //   margin: EdgeInsets.only(top: 10),
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 10,
            //     vertical: 10,
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //         bottomLeft: Radius.circular(5),
            //         bottomRight: Radius.circular(5)),
            //     color: Colors.green.shade500,
            //   ),
            //   child: Center(
            //       child: Text(
            //     "Pay Now",
            //     style: TextStyle(color: whiteColor),
            //   )),
            // ),

            //
            // ],
            // ),
          )
        ],
      ),
    );
  }
}
