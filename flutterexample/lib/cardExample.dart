import 'package:flutter/material.dart';

class CardExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CardState();
  }
}

class CardState extends State<CardExample> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Card(
            child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: Icon(Icons.album),
          title: Text('Card program'),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
              FlatButton(
                child: const Text('LISTEN'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
