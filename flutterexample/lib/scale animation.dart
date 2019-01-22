import 'package:flutter/material.dart';

class Scale1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScaleState();
}

class ScaleState extends State<Scale1> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 5),
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: new AnimatedBuilder(
        animation: animationController,
        child: new Container(
          height: 200.0,
          width: 200.0,
          child: new Image.asset('images/download.png'),
        ),
        builder: (BuildContext context, Widget _widget) {
          return new Transform.scale(
            scale: animationController.value * 6.3,
            child: _widget,
          );
        },
      ),
    );
  }
}
