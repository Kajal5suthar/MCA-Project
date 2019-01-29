import 'package:flutter/material.dart';

class Welcomepage1 extends StatelessWidget {
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
  }
}
