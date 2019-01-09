import 'package:flutter/material.dart';
import 'package:flutterexample/tabBar/first.dart';
import 'package:flutterexample/tabBar/second.dart';
import 'package:flutterexample/tabBar/third.dart';

class Top_navigation_Bar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new Top_navigation_Bar_State();
}

class Top_navigation_Bar_State extends State<Top_navigation_Bar>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return new TabBar(
      tabs: <Tab>[
        new Tab(
          // set icon to the tab
          icon: new Icon(Icons.call),
        ),
        new Tab(
          icon: new Icon(Icons.airplanemode_active),
        ),
        new Tab(
          icon: new Icon(Icons.android),
        ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return new TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        // Appbar
        appBar: new AppBar(
            automaticallyImplyLeading: false,
            // Title
            // title: new Text("Using Tabs"),
            // Set the background color of the App Bar
            backgroundColor: Colors.black,
            // Set the bottom property of the Appbar to include a Tab Bar
            bottom: getTabBar()),
        // Set the TabBar view as the body of the Scaffold
        body: getTabBarView(<Widget>[new First(), new Second(), new Third()]));
  }
}
