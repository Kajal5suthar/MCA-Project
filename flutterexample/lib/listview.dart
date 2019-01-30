import 'package:flutter/material.dart';

class List_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = 'List View';

    List<String> listData = [
      'Balbhadra',
      'Paraya',
      'Kajaliya',
      'luchi',
      'Maulik'
    ];

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            new Divider(),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Album'),
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
