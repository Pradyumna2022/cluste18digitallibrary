import 'package:digital_library/global/color.dart';
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
          TabBar(
            // padding: EdgeInsets.all(5),
            physics: ScrollPhysics(),
            // labelPadding: EdgeInsets.all(5),
            // dividerHeight: -10,
            // labelColor: Colors.white,
            labelStyle: TextStyle(
                color: Color.fromARGB(255, 6, 5, 104),
                // letterSpacing: .5,
                fontSize: 15,
                fontWeight: FontWeight.bold),

            unselectedLabelColor: Color.fromARGB(115, 101, 100, 100),
            dividerColor: Colors.white,
            // indicatorWeight: 2,
            indicatorColor: Color.fromARGB(206, 255, 255, 255),
            tabAlignment: TabAlignment.fill,
            controller: _tabController,
            tabs: [
              Tab(text: 'BATCH 1'),
              Tab(text: 'BATCH 2'),
              Tab(text: 'BATCH 3'),
              Tab(text: 'BATCH 4'),
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
