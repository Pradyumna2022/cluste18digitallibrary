import 'package:digital_library/pages/auth/log_in.dart';
import 'package:digital_library/pages/auth/sign_in.dart';
import 'package:digital_library/pages/batch/batch1.dart';
import 'package:digital_library/pages/batch/batch2.dart';
import 'package:digital_library/pages/batch/batch3.dart';
import 'package:digital_library/pages/batch/batch4.dart';
import 'package:digital_library/pages/batch/subBatchboys/batch1_boys.dart';
import 'package:digital_library/pages/batch/subBatchgirsl/batch1_girsl.dart';
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
          TabBar.secondary(
            physics: ScrollPhysics(),
            dividerHeight: 0,
            // labelColor: Colors.white,
            labelStyle: GoogleFonts.josefinSans(
              textStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            unselectedLabelColor: Colors.black45,
            dividerColor: Colors.black,
            indicatorWeight: 2,
            indicatorColor: Colors.black,
            tabAlignment: TabAlignment.fill,
            controller: _tabController,
            tabs: [
              Tab(text: 'Boys'),
              Tab(text: 'Girs'),
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
