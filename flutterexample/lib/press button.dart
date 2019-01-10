import 'package:flutter/material.dart';

class PressEvent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PressEventState();
}

class PressEventState extends State<PressEvent> {
  void OnPressofButton() {
    setState(() {
      displayedString = listData[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  int counter = 0;
  List<String> listData = [
    'Balbhadra',
    'Paraya',
    'Kajaliya',
    'luchi',
    'Maulik'
  ];
  String displayedString = ' hello flutter';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: new Text('Press Event'),
          backgroundColor: Colors.black,
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  displayedString,
                  style: new TextStyle(fontSize: 20.0),
                ),
                new Padding(padding: new EdgeInsets.all(8.0)),
                new RaisedButton(
                  child: new Text('press'),
                  color: Colors.grey,
                  onPressed: OnPressofButton,
                )
              ],
            ),
          ),
        ));
  }
}
