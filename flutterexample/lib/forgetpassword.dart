import 'package:flutter/material.dart';

class Forgotpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ForgotpageState();
}

class ForgotpageState extends State<Forgotpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('Forgot  password page'),
      ),
      body: new Column(children: <Widget>[
        new TextFormField(
            keyboardType:
                TextInputType.emailAddress, // Use email input type for emails.
            decoration: new InputDecoration(
                hintText: 'you@example.com', labelText: 'E-mail Address'),
            onSaved: (String val) {}),
        new RaisedButton(
          onPressed: null,
          child: new Text('submit'),
        ),
      ]),
    );
  }
}
