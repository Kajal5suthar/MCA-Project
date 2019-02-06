import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  @override
  State createState() => AnimationState();
}

class AnimationState extends State<Animation2> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> transitionTween;
  Animation<BorderRadius> borderRadius;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        }
        if (status == AnimationStatus.dismissed) {
          Navigator.pop(context);
        }
      });

    transitionTween = Tween<double>(
      begin: 50.0,
      end: 200.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.ease,
      ),
    );
    borderRadius = BorderRadiusTween(
      begin: BorderRadius.circular(75.0),
      end: BorderRadius.circular(0.0),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.ease,
      ),
    );
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
            body: new Center(
          child: Container(
            alignment: Alignment.bottomCenter,
            width: transitionTween.value,
            height: transitionTween.value,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: borderRadius.value,
            ),
          ),
        ));
      },
    );
  }
}
