import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Radio_Button extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new Radio_ButtonState();
}

class Radio_ButtonState extends State<Radio_Button> {
  int radioValue0 = -1;
  int correctScore = 0;
  int radioValue1 = -1;
  int radioValue2 = -1;

  void handleRadioValueChange1(int value) {
    setState(() {
      radioValue0 = value;

      switch (radioValue0) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void handleRadioValueChange2(int value) {
    setState(() {
      radioValue1 = value;

      switch (radioValue1) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);

          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);

          break;
      }
    });
  }

  void handleRadioValueChange3(int value) {
    setState(() {
      radioValue2 = value;

      switch (radioValue2) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again!', toastLength: Toast.LENGTH_SHORT);

          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);

          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text('Radio Button'),
          centerTitle: true,
        ),
        body: new Container(
          padding: EdgeInsets.all(8),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('select name'),
              new Padding(
                padding: EdgeInsets.all(5),
              ),
              new Padding(padding: EdgeInsets.all(4)),
              new Text('name'),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: radioValue0,
                    onChanged: handleRadioValueChange1,
                  ),
                  new Text('kajal'),
                  new Radio(
                    value: 1,
                    groupValue: radioValue0,
                    onChanged: handleRadioValueChange1,
                  ),
                  new Text('priya'),
                  new Radio(
                    value: 2,
                    groupValue: radioValue0,
                    onChanged: handleRadioValueChange1,
                  ),
                  new Text('dimple'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void resetSelection() {
    handleRadioValueChange1(-1);
    handleRadioValueChange2(-1);
    handleRadioValueChange3(-1);

    correctScore = 0;
  }

  void validateAnswers() {
    if (radioValue0 == -1 && radioValue1 == -1 && radioValue2 == -1) {
      Fluttertoast.showToast(
          msg: 'Please select atleast one answer',
          toastLength: Toast.LENGTH_SHORT);
    } else {
      Fluttertoast.showToast(
          msg: 'Your total score is: $correctScore out of 3',
          toastLength: Toast.LENGTH_LONG);
    }
  }
}
