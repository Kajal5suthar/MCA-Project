import 'package:flutter/material.dart';
import 'package:loginpage1/loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.black38,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
  // This widget is the root of your application.
}
