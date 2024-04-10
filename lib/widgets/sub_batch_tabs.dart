import 'package:digital_library/global/color.dart';
import 'package:digital_library/batch/main_batch.dart/batch1.dart';
import 'package:digital_library/batch/main_batch.dart/batch2.dart';
import 'package:digital_library/batch/main_batch.dart/batch3.dart';
import 'package:digital_library/batch/main_batch.dart/batch4.dart';
import 'package:digital_library/batch/subBatchboys/batch1_boys.dart';
import 'package:digital_library/batch/subBatchgirsl/batch1_girsl.dart';
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
          Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   color: Color.fromARGB(255, 4, 162, 146),
            // ),
            margin: EdgeInsets.only(top: 3),
            // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: TabBar(
              // physics: ScrollPhysics(),
              dividerHeight: 0,
              // labelColor: selectedColor[0],

              // // dragStartBehavior: DragStartBehavior.start,
              // labelPadding: EdgeInsets.zero,
              // splashBorderRadius: BorderRadius.circular(0),
              // labelStyle: GoogleFonts.josefinSans(
              //   textStyle: TextStyle(
              //       color: Color.fromARGB(255, 226, 255, 245),
              //       fontSize: 15,
              //       fontWeight: FontWeight.bold),
              // ),
              unselectedLabelColor: Colors.grey,

              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                  color: Color.fromARGB(255, 4, 88, 80),
                  borderRadius: BorderRadius.circular(10)),
              indicatorWeight: 0.01,
              indicatorColor: Color.fromARGB(255, 25, 72, 55),

              tabAlignment: TabAlignment.fill,
              controller: _tabController,
              tabs: [
                Tab(
                  // height: 20,
                  // text: 'BOYS',
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'lib/icons/boy.png',
                      // width: 25,
                    ),
                  ),
                ),
                Tab(
                  // text: 'GIRSL',
                  iconMargin: EdgeInsets.all(10),
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'lib/icons/woman.png',
                      // width: 25,
                    ),
                  ),
                ),
              ],
            ),
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
