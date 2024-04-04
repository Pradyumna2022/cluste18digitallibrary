import 'package:digital_library/global/color.dart';
import 'package:flutter/material.dart';

class StudentFeeWidget extends StatelessWidget {
  const StudentFeeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(5)),
                    color: Colors.red.shade200,
                  ),
                  child: Text("Payment Due"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Student Name",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("Sidhuman"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Due Date",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("13 June 2024"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text("\$ 1325"),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  // alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 10),
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
          )
        ],
      ),
    );
  }
}
