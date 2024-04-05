import 'package:digital_library/global/color.dart';
import 'package:digital_library/pages/auth/log_in.dart';
import 'package:digital_library/pages/auth/sign_in.dart';
import 'package:digital_library/pages/batch/batch1.dart';
import 'package:digital_library/pages/batch/batch2.dart';
import 'package:digital_library/pages/batch/batch3.dart';
import 'package:digital_library/pages/batch/batch4.dart';
import 'package:digital_library/pages/batch/subBatchboys/batch1_boys.dart';
import 'package:digital_library/pages/batch/subBatchgirsl/batch1_girsl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SubBatchTabsWidget extends StatefulWidget {
  const SubBatchTabsWidget({super.key});

  @override
  State<SubBatchTabsWidget> createState() => _SubBatchTabsWidgetState();
}

class _SubBatchTabsWidgetState extends State<SubBatchTabsWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            // physics: ScrollPhysics(),
            dividerHeight: 0,
            // // labelColor: Colors.white,

            // // dragStartBehavior: DragStartBehavior.start,
            labelPadding: EdgeInsets.zero,
            splashBorderRadius: BorderRadius.circular(150),
            // // labelStyle: GoogleFonts.josefinSans(
            // //   textStyle: TextStyle(
            // //       color: Colors.green,
            // //       fontSize: 19,
            // //       fontWeight: FontWeight.bold),
            // // ),
            // unselectedLabelColor: Colors.black45,
            // // dividerColor: Colors.yellow,

            indicatorWeight: 0.01,
            indicatorColor: whiteColor,

            // // tabAlignment: TabAlignment.fill,
            controller: _tabController,
            tabs: [
              Tab(
                // height: 20,
                // text: 'Boys',
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'lib/icons/boy.png',
                    // width: 25,
                  ),
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.all(10),
                icon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'lib/icons/woman.png',
                    // width: 25,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [Bacth1Boys(), Bacth1Girls()],
            ),
          ),
        ],
      ),
    );
  }
}
