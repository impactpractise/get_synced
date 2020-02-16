import 'package:flutter/material.dart';
import 'package:get_synced/screens/explore_screen.dart';
import 'package:get_synced/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ExploreScreen(),
          Container(),
          Container(),
          Container(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        labelColor: Color(0xFFFA6900),
        labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        unselectedLabelColor: Colors.grey[400],
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        indicatorColor: Colors.transparent,
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.search, size: 20),
            text: "EXPLORE",
          ),
          Tab(
            icon: Icon(Icons.favorite_border, size: 20),
            text: "SAVED",
          ),
          Tab(
            icon: Icon(Icons.add, size: 20),
            text: "UPDATE",
          ),
          Tab(
            icon: Icon(Icons.chat_bubble_outline, size: 20),
            text: "INBOX",
          ),
          Tab(
            icon: Icon(Icons.person_outline, size: 20),
            text: "PROFILE",
          ),
        ],
      ),
    );
  }
}
