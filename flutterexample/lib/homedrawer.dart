import 'package:flutter/material.dart';
import 'package:flutterexample/Language/Language1.dart';
import 'package:flutterexample/Language/Language2.dart';
import 'package:flutterexample/Language/Language3.dart';

class HomeScreen extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("C", Icons.arrow_forward),
    new DrawerItem("C++", Icons.arrow_forward),
    new DrawerItem("JAVA", Icons.arrow_forward),
  ];

  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Top_navigation_Bar();
      case 1:
        return new ABC();
      case 2:
        return new Third_Top();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon),
        title: new Text(d.title),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Language"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

/*
class HomePage extends StatefulWidget {

  State<StatefulWidget> createState() {
    return HomePage();
  }
}

abstract class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),

  }
}
*/
