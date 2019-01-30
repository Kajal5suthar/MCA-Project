import 'package:flutter/material.dart';

class ExpansionPanelExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpansionPanelState();
  }
}

class ExpansionPanelState extends State<ExpansionPanelExample> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('demo'),
      ),
      body: new ListView(children: <Widget>[
        new ExpansionPanelList(
          expansionCallback: (int panelIndex, bool isExpanded) {
            setState(() {
              _isExpanded = !isExpanded;
            });
          },
          children: <ExpansionPanel>[
            new ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) =>
                  const Text("Test"),
              body: const Text("Test"),
              isExpanded: true,
            ),
          ],
        )
      ]),
    );
  }
}
