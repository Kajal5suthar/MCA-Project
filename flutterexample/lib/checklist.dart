import 'package:flutter/material.dart';

class Check_Box extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new Check_BoxState();
}

class Check_BoxState extends State<Check_Box> {
  bool checkBoxValue0 = false;
  bool checkBoxValue1 = false;
  bool checkBoxValue2 = false;
  String actiontext = 'Default';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "check box ",
      home: new Scaffold(
        appBar: AppBar(
            title: new Center(
              child: new Text("Checkbox"),
            ),
            actions: <Widget>[]),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Checkbox(
                          value: checkBoxValue0,
                          onChanged: (bool newValue) {
                            setState(() {
                              checkBoxValue0 = newValue;
                              print("checkBoxValue");
                            });
                          }),
                      new Text(
                        "Yes",
                      ),
                    ],
                  )),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Checkbox(
                      value: checkBoxValue1,
                      onChanged: (bool newValue) {
                        setState(() {
                          checkBoxValue1 = newValue;
                          print("checkBoxValue");
                        });
                      }),
                  new Text(
                    "No",
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Checkbox(
                      value: checkBoxValue2,
                      onChanged: (bool newValue) {
                        setState(() {
                          checkBoxValue2 = newValue;
                          print("checkBoxValue");
                        });
                      }),
                  new Text(
                    "May Be",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
