import 'package:flutter/material.dart';

void example() {
  runApp(Simple());
}

class Simple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final appName = "abb";
    return MaterialApp(
      // ignore: argument_type_not_assignable
      title: appName,
      theme: ThemeData(
          primaryColor: Colors.green[200],
          textTheme: TextTheme(
              title: TextStyle(fontSize: 40.0, fontStyle: FontStyle.italic))),
    );
  }
}
