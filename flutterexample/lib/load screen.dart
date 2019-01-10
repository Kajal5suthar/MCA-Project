import 'package:flutter/material.dart';

class LoadScreen extends StatefulWidget {
  LoadScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State createState() => new LoadScreenState();
}

class LoadScreenState extends State<LoadScreen> {
  bool loading = false;

  void onLoading() {
    setState(() {
      loading = true;
      new Future.delayed(new Duration(seconds: 3), login);
    });
  }

  Future login() async {
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var body = new Column(
      children: <Widget>[
        new Container(
          height: 40.0,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.fromLTRB(15.0, 150.0, 15.0, 0.0),
          decoration: new BoxDecoration(
            color: Colors.white,
          ),
          child: new TextField(
            decoration: new InputDecoration.collapsed(hintText: "username"),
          ),
        ),
        new Container(
          height: 40.0,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(15.0),
          decoration: new BoxDecoration(
            color: Colors.white,
          ),
          child: new TextField(
            decoration: new InputDecoration.collapsed(hintText: "password"),
          ),
        ),
      ],
    );

    var bodyProgress = new Container(
      child: new Stack(
        children: <Widget>[
          body,
          new Container(
            alignment: AlignmentDirectional.center,
            decoration: new BoxDecoration(
              color: Colors.white70,
            ),
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: new BorderRadius.circular(10.0)),
              width: 300.0,
              height: 200.0,
              alignment: AlignmentDirectional.center,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Center(
                    child: new SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: new CircularProgressIndicator(
                        value: null,
                        strokeWidth: 7.0,
                      ),
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 25.0),
                    child: new Center(
                      child: new Text(
                        "loading.. wait...",
                        style: new TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
          decoration: new BoxDecoration(color: Colors.blue[200]),
          child: loading ? bodyProgress : body),
      floatingActionButton: new FloatingActionButton(
        onPressed: onLoading,
        tooltip: 'Loading',
        child: new Icon(Icons.check),
      ),
    );
  }
}
