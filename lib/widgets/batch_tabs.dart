import 'package:digital_library/pages/auth/log_in.dart';
import 'package:digital_library/pages/auth/sign_in.dart';
import 'package:digital_library/pages/batch/batch1.dart';
import 'package:digital_library/pages/batch/batch2.dart';
import 'package:digital_library/pages/batch/batch3.dart';
import 'package:digital_library/pages/batch/batch4.dart';
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
          TabBar.secondary(
            physics: ScrollPhysics(),
            dividerHeight: 0,
            // labelColor: Colors.white,
            labelStyle: GoogleFonts.josefinSans(
              textStyle: TextStyle(
                  color: Colors.black,
                  // letterSpacing: .5,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            unselectedLabelColor: Colors.black45,
            dividerColor: Colors.black,
            indicatorWeight: 2,
            indicatorColor: Colors.black,
            tabAlignment: TabAlignment.fill,
            controller: _tabController,
            tabs: [
              Tab(text: 'Batch1'),
              Tab(text: 'Batch2'),
              Tab(text: 'Batch3'),
              Tab(text: 'Batch4'),
            ],
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
