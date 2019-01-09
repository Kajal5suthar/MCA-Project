import 'package:flutter/material.dart';
import 'package:flutterexample/checklist.dart';
import 'package:flutterexample/dropdown%20list.dart';
import 'package:flutterexample/gridview.dart';
import 'package:flutterexample/homedrawer.dart';
import 'package:flutterexample/listview.dart';
import 'package:flutterexample/navigationbar.dart';
import 'package:flutterexample/rediobutton.dart';
import 'package:flutterexample/sliderscreen/sliderscreen.dart';
import 'package:flutterexample/tabbar.dart';

class Rais_Button extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Rais_ButtonState();
}

class Rais_ButtonState extends State<Rais_Button> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Raised Button"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('BottomNavigation'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Navigation_Bar()));
                  }),
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Drawer'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Slider screen'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Image_Slide()));
                  }),
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Top Navigation'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Top_navigation()));
                  }),
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('List View'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => List_view()));
                  }),
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Grid List '),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Grid_View()));
                  }),
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Drop down list '),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DropDown_List()));
                  }),
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Radio_Button '),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Radio_Button()));
                  }),
              new RaisedButton(
                  padding: const EdgeInsets.all(9.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text('Check box '),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Check_Box()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
