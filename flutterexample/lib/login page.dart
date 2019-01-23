import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginpageState();
}

class LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Login Page'),
      ),
      body: new Container(
        child: new Center(child: new Text('Hello')),
      ),
    );
  }
}
