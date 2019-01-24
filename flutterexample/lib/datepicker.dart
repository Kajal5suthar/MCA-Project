import 'package:flutter/material.dart';

class PickerExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PickerState();
}

//State is information of the application that can change over time or when some actions are taken.
class PickerState extends State<PickerExample> {
  String value = '';

  Future selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2019));
    if (picked != null) setState(() => value = picked.toString());
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(value),
              new RaisedButton(
                onPressed: selectDate,
                child: new Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
