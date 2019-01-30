import 'package:flutter/material.dart';

class IconButtonExample extends StatefulWidget {
  IconButtonExample({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IconButtonState();
  }
}

class IconButtonState extends State<IconButtonExample> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new Center(
            child: new IconButton(
      icon: Icon(Icons.volume_up),
      tooltip: 'Increase volume by 10%',
      onPressed: () {
        setState(() {
          volume *= 1.1;
        });
      },
    )));
  }
}

double volume = 0.0;
