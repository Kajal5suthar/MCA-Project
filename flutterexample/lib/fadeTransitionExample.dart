import 'package:flutter/material.dart';

class FadeTransitionExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FadeTransitionState();
}

class FadeTransitionState extends State<FadeTransitionExample> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Fade animation'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: visible ? 1.0 : 0.0,
          duration: Duration(seconds: 4),
          child: Container(
            width: 200.0,
            height: 200.0,
            child: new Image.asset('images/download.png'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
        //tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}
