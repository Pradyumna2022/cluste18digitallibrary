import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_library/global/color.dart';
import 'package:digital_library/pages/galary_details_page.dart';
import 'package:digital_library/pages/galery_page.dart';
import 'package:digital_library/pages/home_page.dart';
import 'package:digital_library/pages/fee.dart';
import 'package:digital_library/pages/profile_page.dart';
import 'package:digital_library/pages/student_home_page.dart';
import 'package:digital_library/widgets/batch_tabs.dart';
import 'package:digital_library/widgets/drawer.dart';
import 'package:digital_library/widgets/nav_bar.dart';
import 'package:digital_library/widgets/student_nav_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class StudenHomeFeeBottomBar extends StatefulWidget {
  const StudenHomeFeeBottomBar({super.key});

  @override
  State<StudenHomeFeeBottomBar> createState() => _StudenHomeFeeBottomBarState();
}

class _StudenHomeFeeBottomBarState extends State<StudenHomeFeeBottomBar> {
  int selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    StudentHomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StudentNavBarWidget(
        onTabChange: (value) => navigateBottomBar(value),
      ),
      body: pages[selectedIndex],
    );
  }
}
