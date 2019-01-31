import 'package:flutter/material.dart';
import 'package:flutterexample/animation%20page/page1.dart';
import 'package:flutterexample/animation%20page/page2.dart';

class MainHeroAnimationsPage extends StatefulWidget {
  @override
  MainHeroAnimationsPageState createState() => MainHeroAnimationsPageState();
}

class MainHeroAnimationsPageState extends State<MainHeroAnimationsPage> {
  onButtonTap(Widget page) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: true, builder: (BuildContext context) => page));
  }

//  onButtonTapPopup(Widget page) {
//    Navigator.push(
//        context, HeroDialogRoute(builder: (BuildContext context) => page));
//  }

  onButtonTapCustom(Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder<Null>(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return AnimatedBuilder(
                animation: animation,
                builder: (BuildContext context, Widget child) {
                  return Opacity(
                    opacity: animation.value,
                    child: page,
                  );
                });
          },
          transitionDuration: Duration(milliseconds: 600)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animations"),
      ),
      body: Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildCustomButton("Simple Hero", Page1()),
              buildCustomButton("Two Heroes", Page2()),
              buildCustomButton("Custom Hero Animation", Page1(),
                  isCustom: true),
              Hero(
                tag: "hero1",
                child: ClipOval(
                  child: CustomLogo(
                    size: 60.0,
                  ),
                ),
              ),
              Hero(
                  tag: "hero2",
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      "Sample Hero",
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  buildCustomButton(String text, Widget page,
      {bool isPopup = false, bool isCustom = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        height: 40.0,
        padding: EdgeInsets.all(10.0),
        color: Colors.lightBlue,
        onPressed: () {
          if (isPopup) {
            onButtonTapPopup(page);
          } else {
            onButtonTap(page);
          }
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13.0),
        ),
      ),
    );
  }

  buildPopUp(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: Hero(
            tag: "hero2", child: Material(child: Text('You are my hero.'))),
        content: Container(
          child: Hero(
              tag: 'hero1',
              child: CustomLogo(
                size: 300.0,
              )),
        ),
        actions: <Widget>[
          OutlineButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Icon(Icons.close),
          ),
        ],
      ),
    );
  }

  void onButtonTapPopup(Widget page) {}
}

class HeroDialogRoute {}

class CustomLogo extends StatelessWidget {
  final double size;

  CustomLogo({this.size = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      width: size,
      height: size,
      child: Center(
        child: Image.asset(
          "images/download.png",
          width: size,
          height: size,
        ),
      ),
    );
  }
}
