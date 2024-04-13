import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_library/global/color.dart';
import 'package:digital_library/pages/galary_details_page.dart';
import 'package:digital_library/pages/galery_page.dart';
import 'package:digital_library/pages/home_page.dart';
import 'package:digital_library/pages/fee.dart';
import 'package:digital_library/widgets/batch_tabs.dart';
import 'package:digital_library/widgets/drawer.dart';
import 'package:digital_library/widgets/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFeeGaleryBottomBar extends StatefulWidget {
  const HomeFeeGaleryBottomBar({super.key});

  @override
  State<HomeFeeGaleryBottomBar> createState() => _HomeFeeGaleryBottomBarState();
}

class _HomeFeeGaleryBottomBarState extends State<HomeFeeGaleryBottomBar> {
  int selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    FeePage(),
    GaleryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GoogleNavBarWidget(
        onTabChange: (value) => navigateBottomBar(value),
      ),
      body: pages[selectedIndex],
    );
  }
}
