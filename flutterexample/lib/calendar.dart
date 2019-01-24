import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class CalendarExample extends StatelessWidget {
  void handleNewDate(date) {
    print("handleNewDate ${date}");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text(' Calendar'),
            ),
            body: new Container(
                margin: new EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 10.0,
                ),
                child: new ListView(shrinkWrap: true, children: <Widget>[
                  new Text('Default Calendar:'),
                  new Calendar(
                    onSelectedRangeChange: (range) =>
                        print("Range is ${range.item1}, ${range.item2}"),
                    onDateSelected: (date) => handleNewDate(date),
                  ),
                  new Divider(
                    height: 50.0,
                  ),
                ]))));
  }
}
