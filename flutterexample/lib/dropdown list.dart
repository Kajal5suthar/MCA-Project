import 'package:flutter/material.dart';

class DropDown_List extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new DropDown_List_State();
}

class DropDown_List_State extends State<DropDown_List> {
  List name = ["abc", "xyz", "pqr"];

  List<DropdownMenuItem<String>> dropDownMenuItems;
  String selectedName;
  @override
  void initState() {
    dropDownMenuItems = buildAndGetDropDownMenuItems(name);
    selectedName = dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List name) {
    List<DropdownMenuItem<String>> items = new List();
    for (String name in name) {
      items.add(new DropdownMenuItem(value: name, child: new Text(name)));
    }
    return items;
  }

  void changedDropDownItem(String selectedName) {
    setState(() {
      selectedName = selectedName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("DropDown Button Example"),
        ),
        body: new Container(
          child: new Center(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Please choose a name: "),
              new DropdownButton(
                value: selectedName,
                items: dropDownMenuItems,
                onChanged: changedDropDownItem,
              )
            ],
          )),
        ),
      ),
    );
  }
}
