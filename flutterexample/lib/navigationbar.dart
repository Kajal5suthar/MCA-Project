import 'package:flutter/material.dart';
import 'package:flutterexample/tab/first%20tab.dart';
import 'package:flutterexample/tab/second%20tab.dart';
import 'package:flutterexample/tab/third%20tab.dart';

class Navigation_Bar extends StatefulWidget {
  @override
  Navigation_BarState createState() => new Navigation_BarState();
}

class Navigation_BarState extends State<Navigation_Bar>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bottom Navigation Bar"),
        backgroundColor: Colors.blue,
      ),
      body: new TabBarView(
        children: <Widget>[new FirstTab(), new SecondTab(), new ThirdTab()],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.green,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.call),
            ),
            new Tab(
              icon: new Icon(Icons.mail),
            ),
            new Tab(
              icon: new Icon(Icons.image),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
