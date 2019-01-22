import 'package:flutter/material.dart';


class RatingBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RatingState();
}

class RatingState extends State<RatingBar> {
  double rating = 1;
  int starCount = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Star Rating"),
      ),
      body: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(
              top: 50.0,
              bottom: 50.0,
            ),
            child: new ,
          ),
          new Text(
            "Your rating is: $rating",
            style: new TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
