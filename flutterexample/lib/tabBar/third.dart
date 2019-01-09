import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          // center the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.android,
              size: 160.0,
              color: Colors.green,
            ),
            new Text("android")
          ],
        ),
      ),
    );
  }
}
