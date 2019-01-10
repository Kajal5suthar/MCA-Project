import 'package:flutter/material.dart';

class Dialog_box extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
        appBar: new AppBar(
          backgroundColor: new Color(0xFF26C6DA),
        ),
        floatingActionButton: new FloatingActionButton(
            tooltip: 'Add',
            child: new Icon(Icons.add),
            backgroundColor: new Color(0xFFF44336),
            onPressed: () {
              new SimpleDialog(
                title: new Text('Test'),
                children: <Widget>[
                  new RadioListTile(
                    title: new Text('Testing'),
                    value: null,
                    groupValue: null,
                    onChanged: (value) {},
                  )
                ],
              );
            }),
      );
}
