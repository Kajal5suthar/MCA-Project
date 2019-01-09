import 'package:flutter/material.dart';

void main() {
  runApp(ABC());
}

class ABC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      drawer: new Drawer(), // new Line
      appBar: new AppBar(
        title: new Text("ABC"),
      ),
      body: new Text("C++"),
    );
  }
}

class XYZ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: new Drawer(), // new Line
      appBar: new AppBar(
        title: new Text("XYZ"),
      ),
      body: new Text("c"),
    );
  }
}

class PQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: new Drawer(), // new Line
      appBar: new AppBar(
        title: new Text("PQR"),
      ),
      body: new Text("JAVA"),
    );
  }
}
