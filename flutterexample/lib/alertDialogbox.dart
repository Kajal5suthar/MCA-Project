import 'package:flutter/material.dart';
//import 'package:flutterexample/welcompage.dart';

class AlertDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return object of type AlertDialog
    return AlertDialog(
      title: new Text("AlertDialog "),
      content: new Text("do you want to login"),
      actions: <Widget>[
        // usually buttons at the bottom of the dialog
        new FlatButton(
          child: new Text("yes"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WelcomePage()));
          },
        ),
        new FlatButton(
          child: new Text("Close"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("welcom"),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'welcom to flutter',
            ),
          ],
        ),
      ),
    );
    ;
  }
}
