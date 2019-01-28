import 'package:flutter/material.dart';
import 'package:flutterexample/imagelist.dart';

class MyProduct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyProductState();
  }
}

class MyProductState extends State<MyProduct> {
  List<String> products = ['List'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: Text('List')),
        body: Column(children: [
          Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  splashColor: Colors.blueGrey,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ImageDetail()));
                  })),
//          Column(
//            new Row(
//              children: products
//                  .map((element) => Card(
//                        child: Column(
//                          children: <Widget>[
//                            Image.asset('images/1.jpg'),
//                            Text(element,
//                                style: TextStyle(color: Colors.deepPurple))
//                          ],
//                        ),
//                      ))
//                  .toList()),
//
        ]),
      ),
    );
  }
}
