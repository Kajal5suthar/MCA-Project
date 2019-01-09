import 'package:flutter/material.dart';

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: Text(
          'hello',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}

void main() {
  // ignore: referenced_before_declaration
  var runApp = runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello rectangle'),
        ),
        body: Container(
          color: Colors.greenAccent,
        ),
      ),
    ),
  );
}
