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
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 4, 26, 24),
            borderRadius: BorderRadius.circular(15)),
        child: Image.asset(
          iconPath,
          scale: 6,
          // color: Colors.black,
        ));
  }
}
