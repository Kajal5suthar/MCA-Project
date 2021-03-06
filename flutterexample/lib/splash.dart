import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterexample/raisbutton.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Rais_Button()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Image.asset(
        'images/download.png',
        fit: BoxFit.fill,
        height: 900.0,
        width: 400.0,
        alignment: Alignment.center,
      ),

      //backgroundColor: Colors.black,
    );
  }
}
