import 'package:flutter/material.dart';

class ButtonBar1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ButtonBarState();
  }
}

class ButtonBarState extends State<ButtonBar1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new ButtonBar(
          mainAxisSize: MainAxisSize
              .min, // this will take space as minimum as posible(to center)
          children: <Widget>[
            new RaisedButton(
              child: new Text('puase'),
              onPressed: null,
            ),
            new RaisedButton(
              child: new Text('play'),
              onPressed: null,
            ),
            new RaisedButton(
              child: new Text('stop'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
