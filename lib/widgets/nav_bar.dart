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
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 4, 162, 146),
          border: Border.all(color: whiteColor, width: 0.2)),
      child: GNav(
          backgroundColor: Color.fromARGB(255, 4, 162, 146),
          activeColor: whiteColor,
          tabBackgroundColor: Color.fromARGB(255, 15, 90, 73),
          gap: 8,
          color: whiteColor,
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
