import 'package:flutter/material.dart';

class BackGroundExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BackGroundState();
  }
}

class BackGroundState extends State<BackGroundExample> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Center(
            child: new Text("hello flutter"),
            heightFactor: 200.0,
            widthFactor: 200.0,
          )
        ],
      ),
    );
  }
}
