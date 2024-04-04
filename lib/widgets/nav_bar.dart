import 'package:digital_library/global/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBarWidget extends StatelessWidget {
  final void Function(int)? onTabChange;
  const GoogleNavBarWidget({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade200,
          border: Border.all(color: whiteColor, width: 0.2)),
      child: GNav(
          backgroundColor: Colors.grey.shade200,
          activeColor: whiteColor,
          tabBackgroundColor: blackColor,
          gap: 8,
          color: blackColor,
          curve: Curves.decelerate,
          padding: EdgeInsets.all(16),
          onTabChange: (index) => onTabChange!(index),
          tabs: [
            GButton(
              icon: CupertinoIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.ballot_rounded,
              text: 'Fee',
            ),
            GButton(
              icon: Icons.photo,
              text: 'Gallery',
            ),
          ]),
    );
  }
}
