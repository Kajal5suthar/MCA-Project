import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LayoutpageState();
}

class LayoutpageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Layout'),
        ),
        body: Center(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            child: Image.asset('images/a1_new.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/2.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/3.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/download.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/1.jpg'),
          ),
        ])));
  }
}
