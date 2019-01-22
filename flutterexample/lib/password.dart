import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PasswordState();
}

class PasswordState extends State<Password> {
  bool passwordVisible = true;

  String password, Email;

  @override
  void initState() {
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Password"),
        ),
        body: new Container(
//          padding: const EdgeInsets.all(10.0),

          margin: EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,

                // Use email input type for emails.
                decoration: new InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        passwordVisible
                            ? passwordVisible = false
                            : passwordVisible = true;
                      });
                    },
                  ),
                ),
                validator: (val) =>
                    val.length < 6 ? 'Password too short.' : null,
              ),
            ],
          ),

//            new FlatButton(
////                onPressed: toggle,
////                child: new Text(obscureText ? "Show" : "Hide")
//              shape: new RoundedRectangleBorder(
//                  borderRadius: new BorderRadius.circular(20.0)),
//              splashColor: Colors.grey,
//              color: Colors.grey,
//              child : new IconButton(icon: new Icon(Icons.remove_red_eye),
//
//              ),
          //             onPressed: toggle,
//            )
        ));
  }
}
