import 'package:digital_library/global/color.dart';
import 'package:digital_library/batch/main_batch.dart/batch1.dart';
import 'package:digital_library/batch/main_batch.dart/batch2.dart';
import 'package:digital_library/batch/main_batch.dart/batch3.dart';
import 'package:digital_library/batch/main_batch.dart/batch4.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BatchTabsWidget extends StatefulWidget {
  const BatchTabsWidget({super.key});

  @override
  State<BatchTabsWidget> createState() => _BatchTabsWidgetState();
}

class _BatchTabsWidgetState extends State<BatchTabsWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 4, 162, 146),
            ),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              // padding: EdgeInsets.all(5),
              physics: ScrollPhysics(),
              // labelPadding: EdgeInsets.symmetric(horizontal: 5),
              // dividerHeight: -10,
              // labelColor: Colors.white,
              // indicatorPadding:
              //     const EdgeInsets.symmetric(horizontal: -5, vertical: 8),
              labelStyle: TextStyle(
                  color: whiteColor,
                  // letterSpacing: .5,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),

              unselectedLabelColor: Color.fromARGB(255, 230, 214, 214),
              dividerColor: Colors.transparent,
              // indicatorWeight: 2,
              indicatorColor: Color.fromARGB(206, 255, 255, 255),
              tabAlignment: TabAlignment.fill,
              indicator: BoxDecoration(
                  color: Color.fromARGB(255, 4, 88, 80),
                  borderRadius: BorderRadius.circular(10)),
              controller: _tabController,
              tabs: [
                Tab(text: 'BATCH 1'),
                Tab(text: 'BATCH 2'),
                Tab(text: 'BATCH 3'),
                Tab(text: 'BATCH 4'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [BatchOne(), BatchTwo(), BatchThree(), BatchFour()],
            ),
          ),
        ],
      ),
    );
  }
}
