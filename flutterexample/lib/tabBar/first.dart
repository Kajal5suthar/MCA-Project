import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.call,
              size: 160.0,
              color: Colors.green,
            ),
            new Text("First Tab")
          ],
        ),
      ),
    );
  }
}
