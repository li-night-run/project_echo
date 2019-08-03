import 'package:flutter/material.dart';

import 'package:li_night_run/tabs/first.dart';
import 'package:li_night_run/tabs/second.dart';
import 'package:li_night_run/tabs/third.dart';
import 'package:li_night_run/tabs/fourth.dart';
import 'package:li_night_run/tabs/fifth.dart';

void main() {
  runApp(MaterialApp(
    // Title
      title: "Using Tabs",
      // Home
      home: MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHome();
  }
}

// SingleTickerProviderStateMixin is used for animation
class _MyHome extends State<MyHome> with SingleTickerProviderStateMixin {

  // Create a tab controller
  TabController controller;
  bool offline;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Li Night Run"),
        // Set the background color of the App Bar
        backgroundColor: Colors.blue,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[FirstTab(), SecondTab(), ThirdTab(), FourthTab(), FifthTab()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.bookmark),
            ),
            Tab(
              icon: Icon(Icons.create),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}

