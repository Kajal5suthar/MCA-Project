import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
    ));

class Xyz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'Welcome flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Column(
          children: <Widget>[
            Text("Hello World"),
            Text("Hello World"),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Bbb()));
                },
                child: Text(
                  'rerdh',
                )),
            Text("Hello World"),
          ],
        ),
      ),
    );
  }
}

class Bbb extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    rr();
  }
}

class rr extends State<Bbb> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.amberAccent,
    );
  }
}

