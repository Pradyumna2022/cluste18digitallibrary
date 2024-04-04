import 'package:digital_library/pages/auth/log_in.dart';
import 'package:digital_library/pages/auth/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthTabs extends StatefulWidget {
  const AuthTabs({super.key});

  @override
  State<AuthTabs> createState() => _AuthTabsState();
}

class _AuthTabsState extends State<AuthTabs> with TickerProviderStateMixin {
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
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: TabBar.secondary(
              physics: ScrollPhysics(),
              dividerHeight: 0,
              // labelColor: Colors.white,
              unselectedLabelColor: Colors.black45,
              dividerColor: Colors.black,
              indicatorWeight: 2,
              indicatorColor: Colors.black,
              tabAlignment: TabAlignment.center,
              controller: _tabController,
              tabs: [
                Tab(text: 'Login'),
                Tab(text: 'Signin'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                LoginPage(),
                SignInPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
