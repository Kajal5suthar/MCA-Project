import 'package:flutter/material.dart';
import 'package:flutterexample/backgroundimage.dart';
import 'package:flutterexample/bottomsheet.dart';
import 'package:flutterexample/buttonBarexmple.dart';
import 'package:flutterexample/calculator.dart';
import 'package:flutterexample/calendar.dart';
import 'package:flutterexample/cardExample.dart';
import 'package:flutterexample/checklist.dart';
import 'package:flutterexample/datatableexample.dart';
import 'package:flutterexample/dialog_box.dart';
import 'package:flutterexample/dropdown%20list.dart';
import 'package:flutterexample/expansionpanelExample.dart';
import 'package:flutterexample/gridview.dart';
import 'package:flutterexample/homedrawer.dart';
import 'package:flutterexample/iconBottonexample.dart';
import 'package:flutterexample/list%20of%20image.dart';
import 'package:flutterexample/listview.dart';
import 'package:flutterexample/load%20screen.dart';
import 'package:flutterexample/menubar.dart';
import 'package:flutterexample/navigationbar.dart';
import 'package:flutterexample/password.dart';
import 'package:flutterexample/press%20button.dart';
import 'package:flutterexample/radiobutton.dart';
import 'package:flutterexample/rating.dart';
import 'package:flutterexample/rotationAnimation.dart';
import 'package:flutterexample/scale%20animation.dart';
import 'package:flutterexample/simple%20calculater.dart';
import 'package:flutterexample/sliderscreen/sliderscreen.dart';
import 'package:flutterexample/snackbar.dart';
import 'package:flutterexample/stepper.dart';
import 'package:flutterexample/switchprogram.dart';
import 'package:flutterexample/tabbar.dart';

class Rais_Button extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Rais_ButtonState();
}

class Rais_ButtonState extends State<Rais_Button> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Raised Button"),
        ),
        body: SingleChildScrollView(
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: new RaisedButton(
                              padding: const EdgeInsets.all(9.0),
                              textColor: Colors.white,
                              color: Colors.green,
                              child: Text('BottomNavigation'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Navigation_Bar()));
                              }),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: new RaisedButton(
                                padding: const EdgeInsets.all(9.0),
                                textColor: Colors.white,
                                color: Colors.green,
                                child: Text('Drawer'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                }),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: new RaisedButton(
                                padding: const EdgeInsets.all(9.0),
                                textColor: Colors.white,
                                color: Colors.green,
                                child: Text('Dialoag box'),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dialog_box()));
                                }),
                          ),
                        )
                      ]),
                ),
                new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                flex: 5,
                                child: Container(
                                  margin: EdgeInsets.only(left: 5.0),
                                  child: new RaisedButton(
                                      padding: const EdgeInsets.all(9.0),
                                      textColor: Colors.white,
                                      color: Colors.green,
                                      child: Text('Slider screen'),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Image_Slide()));
                                      }),
                                )),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  margin: EdgeInsets.only(left: 5.0),
                                  child: new RaisedButton(
                                      padding: const EdgeInsets.all(9.0),
                                      textColor: Colors.white,
                                      color: Colors.green,
                                      child: Text('iconButton'),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    IconButtonExample()));
                                      }),
                                )),
                            Expanded(
                              flex: 5,
                              child: Container(
                                margin: EdgeInsets.only(left: 5.0),
                                child: new RaisedButton(
                                    padding: const EdgeInsets.all(9.0),
                                    textColor: Colors.white,
                                    color: Colors.green,
                                    child: Text('Top Navigation'),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Top_navigation()));
                                    }),
                              ),
                            )
                          ]),
                      new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                        margin: EdgeInsets.only(left: 5.0),
                                        child: new RaisedButton(
                                            padding: const EdgeInsets.all(9.0),
                                            textColor: Colors.white,
                                            color: Colors.green,
                                            child: Text('List View'),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          List_view()));
                                            })),
                                  ),
                                  Expanded(
                                      flex: 5,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 5.0),
                                        child: new RaisedButton(
                                            padding: const EdgeInsets.all(9.0),
                                            textColor: Colors.white,
                                            color: Colors.green,
                                            child: Text('Grid List '),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Grid_View()));
                                            }),
                                      )),
                                  Expanded(
                                      flex: 5,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 5.0),
                                        child: new RaisedButton(
                                            padding: const EdgeInsets.all(9.0),
                                            textColor: Colors.white,
                                            color: Colors.green,
                                            child: Text('Drop down list '),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DropDown_List()));
                                            }),
                                      )),
                                ]),
                            new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Expanded(
                                            flex: 5,
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(left: 5.0),
                                              child: new RaisedButton(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  textColor: Colors.white,
                                                  color: Colors.green,
                                                  child: Text('Radio_Button '),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Radio_Button()));
                                                  }),
                                            )),
                                        Expanded(
                                            flex: 5,
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(left: 5.0),
                                              child: new RaisedButton(
                                                  padding:
                                                      const EdgeInsets.all(9.0),
                                                  textColor: Colors.white,
                                                  color: Colors.green,
                                                  child: Text('Check box '),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Check_Box()));
                                                  }),
                                            )),
                                        Expanded(
                                          flex: 5,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 5.0),
                                            child: new RaisedButton(
                                                padding:
                                                    const EdgeInsets.all(9.0),
                                                textColor: Colors.white,
                                                color: Colors.green,
                                                child: Text('press Event'),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PressEvent()));
                                                }),
                                          ),
                                        )
                                      ]),
                                  new Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        new Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 5,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5.0),
                                                    child: new RaisedButton(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(9.0),
                                                        textColor: Colors.white,
                                                        color: Colors.green,
                                                        child:
                                                            Text('Snack bar '),
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Snack_bar()));
                                                        }),
                                                  )),
                                              Expanded(
                                                  flex: 5,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5.0),
                                                    child: new RaisedButton(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(9.0),
                                                        textColor: Colors.white,
                                                        color: Colors.green,
                                                        child: Text(
                                                            'Load Screen '),
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          LoadScreen1()));
                                                        }),
                                                  )),
                                              Expanded(
                                                  flex: 5,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5.0),
                                                    child: new RaisedButton(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(9.0),
                                                        textColor: Colors.white,
                                                        color: Colors.green,
                                                        child:
                                                            Text('Switch menu'),
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Switchmenu()));
                                                        }),
                                                  )),
                                            ]),
                                        new Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              new Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Expanded(
                                                        flex: 5,
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 5.0),
                                                          child:
                                                              new RaisedButton(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          9.0),
                                                                  textColor:
                                                                      Colors
                                                                          .white,
                                                                  color: Colors
                                                                      .green,
                                                                  child: Text(
                                                                      'Menu bar'),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                MenuBar()));
                                                                  }),
                                                        )),
                                                    Expanded(
                                                        flex: 5,
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 5.0),
                                                          child:
                                                              new RaisedButton(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          9.0),
                                                                  textColor:
                                                                      Colors
                                                                          .white,
                                                                  color: Colors
                                                                      .green,
                                                                  child: Text(
                                                                      'Rating bar'),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                Rating()));
                                                                  }),
                                                        )),
                                                    Expanded(
                                                        flex: 5,
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 5.0),
                                                          child:
                                                              new RaisedButton(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          9.0),
                                                                  textColor:
                                                                      Colors
                                                                          .white,
                                                                  color: Colors
                                                                      .green,
                                                                  child: Text(
                                                                      'Animation'),
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                            builder: (context) =>
                                                                                Rotation()));
                                                                  }),
                                                        )),
                                                  ]),
                                              new Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    new Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Expanded(
                                                              flex: 5,
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            5.0),
                                                                child:
                                                                    new RaisedButton(
                                                                        padding:
                                                                            const EdgeInsets.all(
                                                                                9.0),
                                                                        textColor:
                                                                            Colors
                                                                                .white,
                                                                        color: Colors
                                                                            .green,
                                                                        child: Text(
                                                                            'Scale animation'),
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => Scale1()));
                                                                        }),
                                                              )),
                                                          Expanded(
                                                              flex: 5,
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            5.0),
                                                                child:
                                                                    new RaisedButton(
                                                                        padding:
                                                                            const EdgeInsets.all(
                                                                                9.0),
                                                                        textColor:
                                                                            Colors
                                                                                .white,
                                                                        color: Colors
                                                                            .green,
                                                                        child: Text(
                                                                            'Password'),
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => Password()));
                                                                        }),
                                                              )),
                                                          Expanded(
                                                              flex: 5,
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            5.0),
                                                                child:
                                                                    new RaisedButton(
                                                                        padding:
                                                                            const EdgeInsets.all(
                                                                                9.0),
                                                                        textColor:
                                                                            Colors
                                                                                .white,
                                                                        color: Colors
                                                                            .green,
                                                                        child: Text(
                                                                            'Picker'),
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => CalendarExample()));
                                                                        }),
                                                              )),
                                                        ]),
                                                    new Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          new Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: <
                                                                  Widget>[
                                                                Expanded(
                                                                    flex: 5,
                                                                    child:
                                                                        Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              5.0),
                                                                      child: new RaisedButton(
                                                                          padding: const EdgeInsets.all(9.0),
                                                                          textColor: Colors.white,
                                                                          color: Colors.green,
                                                                          child: Text('Simple cal'),
                                                                          onPressed: () {
                                                                            Navigator.push(context,
                                                                                MaterialPageRoute(builder: (context) => SampleCalculator()));
                                                                          }),
                                                                    )),
                                                                Expanded(
                                                                    flex: 5,
                                                                    child:
                                                                        Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              5.0),
                                                                      child: new RaisedButton(
                                                                          padding: const EdgeInsets.all(9.0),
                                                                          textColor: Colors.white,
                                                                          color: Colors.green,
                                                                          child: Text('calculater'),
                                                                          onPressed: () {
                                                                            Navigator.push(context,
                                                                                MaterialPageRoute(builder: (context) => CalculatorExample()));
                                                                          }),
                                                                    )),
                                                                Expanded(
                                                                    flex: 5,
                                                                    child:
                                                                        Container(
                                                                      margin: EdgeInsets.only(
                                                                          left:
                                                                              5.0),
                                                                      child: new RaisedButton(
                                                                          padding: const EdgeInsets.all(9.0),
                                                                          textColor: Colors.white,
                                                                          color: Colors.green,
                                                                          child: Text('image list'),
                                                                          onPressed: () {
                                                                            Navigator.push(context,
                                                                                MaterialPageRoute(builder: (context) => ImageList()));
                                                                          }),
                                                                    )),
                                                              ]),
                                                          new Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: <
                                                                  Widget>[
                                                                new Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: <
                                                                        Widget>[
                                                                      Expanded(
                                                                        flex: 5,
                                                                        child: Container(
                                                                            margin: EdgeInsets.only(left: 5.0),
                                                                            child: new RaisedButton(
                                                                                padding: const EdgeInsets.all(9.0),
                                                                                textColor: Colors.white,
                                                                                color: Colors.green,
                                                                                child: Text('stepper'),
                                                                                onPressed: () {
                                                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => StepperExample()));
                                                                                })),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 5,
                                                                        child: Container(
                                                                            margin: EdgeInsets.only(left: 5.0),
                                                                            child: new RaisedButton(
                                                                                padding: const EdgeInsets.all(9.0),
                                                                                textColor: Colors.white,
                                                                                color: Colors.green,
                                                                                child: Text('BottomShet'),
                                                                                onPressed: () {
                                                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomSheet1()));
                                                                                })),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 5,
                                                                        child: Container(
                                                                            margin: EdgeInsets.only(left: 5.0),
                                                                            child: new RaisedButton(
                                                                                padding: const EdgeInsets.all(9.0),
                                                                                textColor: Colors.white,
                                                                                color: Colors.green,
                                                                                child: Text('Background'),
                                                                                onPressed: () {
                                                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BackGroundExample()));
                                                                                })),
                                                                      ),
                                                                    ]),
                                                                new Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: <
                                                                        Widget>[
                                                                      new Row(
                                                                          mainAxisAlignment: MainAxisAlignment
                                                                              .center,
                                                                          children: <
                                                                              Widget>[
                                                                            Expanded(
                                                                              flex: 5,
                                                                              child: Container(
                                                                                  margin: EdgeInsets.only(left: 5.0),
                                                                                  child: new RaisedButton(
                                                                                      padding: const EdgeInsets.all(9.0),
                                                                                      textColor: Colors.white,
                                                                                      color: Colors.green,
                                                                                      child: Text('data table'),
                                                                                      onPressed: () {
                                                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => DataTableExample()));
                                                                                      })),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 5,
                                                                              child: Container(
                                                                                  margin: EdgeInsets.only(left: 5.0),
                                                                                  child: new RaisedButton(
                                                                                      padding: const EdgeInsets.all(9.0),
                                                                                      textColor: Colors.white,
                                                                                      color: Colors.green,
                                                                                      child: Text('card '),
                                                                                      onPressed: () {
                                                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => CardExample()));
                                                                                      })),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 5,
                                                                              child: Container(
                                                                                  margin: EdgeInsets.only(left: 5.0),
                                                                                  child: new RaisedButton(
                                                                                      padding: const EdgeInsets.all(9.0),
                                                                                      textColor: Colors.white,
                                                                                      color: Colors.green,
                                                                                      child: Text('ExpansionPanel '),
                                                                                      onPressed: () {
                                                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ExpansionPanelExample()));
                                                                                      })),
                                                                            ),
                                                                          ]),
                                                                      new Column(
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .center,
                                                                          children: <
                                                                              Widget>[
                                                                            new Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: Container(
                                                                                    margin: EdgeInsets.only(left: 5.0),
                                                                                    child: new RaisedButton(
                                                                                        padding: const EdgeInsets.all(9.0),
                                                                                        textColor: Colors.white,
                                                                                        color: Colors.green,
                                                                                        child: Text('buttomBar'),
                                                                                        onPressed: () {
                                                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => ButtonBar1()));
                                                                                        })),
                                                                              ),
                                                                            ]),
                                                                          ]),
                                                                    ]),
                                                              ]),
                                                        ]),
                                                  ]),
                                            ]),
                                      ]),
                                ]),
                          ]),
                    ]),
              ]),
        ));
  }
}
