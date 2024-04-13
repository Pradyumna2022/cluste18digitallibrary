import 'dart:ffi';
import 'dart:math';

import 'package:digital_library/global/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MarketingIiles extends StatelessWidget {
  // final String smartDevicesName;
  final String iconPath;
  const MarketingIiles({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 196, 171, 240),
            borderRadius: BorderRadius.circular(15)),
        child: Container(
          margin: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              iconPath,
              fit: BoxFit.cover,
              // color: Colors.black,
            ),
          ),
        ));
  }
}
