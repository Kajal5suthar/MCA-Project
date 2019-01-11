import 'package:flutter/material.dart';

class Rotation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RotationState();
}

class RotationState extends State<Rotation>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 7),
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: new AnimatedBuilder(
        animation: animationController,
        child: new Container(
          height: 150.0,
          width: 150.0,
          child: new Image.asset('images/download.png'),
        ),
        builder: (BuildContext context, Widget _widget) {
          return new Transform.rotate(
            angle: animationController.value * 6.3,
            child: _widget,
          );
        },
      ),
    );
    ;
  }
}
