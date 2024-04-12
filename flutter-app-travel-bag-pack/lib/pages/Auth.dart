import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'SignIn.dart';
import 'SignUp.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key key}) : super(key: key);
  @override
  _AuthPage createState() => _AuthPage();
}

class _AuthPage extends State<AuthPage> with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: "Sign In",
    ),
    Tab(
      text: "Sign Up",
    )
  ];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigoAccent,
        bottom: TabBar(controller: _tabController, tabs: myTabs),
        elevation: 1,
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SignIn(),
          // PendingIssuePage(),
          SignUp()
        ],
      ),
    );
  }
}
