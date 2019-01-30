import 'package:flutter/material.dart';

class BottomSheet1 extends StatefulWidget {
  final String title;
  BottomSheet1({Key key, this.title}) : super(key: key);

  @override
  State createState() => BottomState();
}

class BottomState extends State<BottomSheet1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
          //  title: Text(widget.title),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          settingModalBottomSheet(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

void settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}
