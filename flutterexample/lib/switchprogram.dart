import 'package:flutter/material.dart';

class Switchmenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SwitchmenuState();
}

class SwitchmenuState extends State<Switchmenu> {
  bool value1 = false;
  bool value2 = false;

  void onChanged1(bool value) => setState(() => value1 = value);
  void onChanged2(bool value) => setState(() => value2 = value);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Text('Switch menu'),
        leading: BackButton(color: Colors.black),
      ),
      body: Container(
          child: Center(
        child: new Column(children: <Widget>[
          new Switch(
            value: value1,
            onChanged: onChanged1,
          ),
          new SwitchListTile(
            value: value2,
            onChanged: onChanged2,
            title: new Text('Hello World',
                style: new TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red)),
          ),
          new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ]),
      )),
    );
  }
}
