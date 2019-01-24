import 'package:flutter/material.dart';
import 'package:flutterexample/forgetpassword.dart';
import 'package:flutterexample/homedrawer.dart';
import 'package:flutterexample/layoutpage.dart';
import 'package:flutterexample/registrationpage.dart';

class Password extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PasswordState();
}

class PasswordState extends State<Password> {
  GlobalKey<FormState> key = new GlobalKey();
  bool passwordVisible = true;
  bool validate = false;
  String password, Email;

  @override
  void initState() {
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login page"),
      ),
      body: new Container(
//          padding: const EdgeInsets.all(10.0),

        margin: EdgeInsets.all(10.0),
        child: new Form(
          key: key,
          autovalidate: validate,
          child: FormUI(),
        ),
      ),
    );
  }

  Widget FormUI() {
    return new Column(children: <Widget>[
      new TextFormField(
          keyboardType:
              TextInputType.emailAddress, // Use email input type for emails.
          decoration: new InputDecoration(
              hintText: 'you@example.com', labelText: 'E-mail Address'),
          validator: validateEmail,
          onSaved: (String val) {
            Email = val;
          }),
      new TextFormField(
        keyboardType: TextInputType.text,
        //controller: _userPasswordController,
        obscureText: passwordVisible,

        // Use email input type for emails.
        decoration: new InputDecoration(
          labelText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              passwordVisible ? Icons.visibility_off : Icons.visibility,
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

        validator: (val) => val.length < 6 ? 'Password too short.' : null,
      ),
      new SizedBox(height: 15.0),
      new RaisedButton(
        onPressed: sendToServer,
        child: new Text('Login'),
      ),
      new Container(
        height: 10.0,
      ),
      new GestureDetector(
          child: Text('Forgot password'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Forgotpage()));
          }),
      new Container(
        height: 10.0,
      ),
      new GestureDetector(
          child: Text('new user'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegistrationPage()));
          })

//      new Container(
//        // width: screenSize.width,
//        child: new RaisedButton(
//          child: new Text(
//            'Login',
//            style: new TextStyle(color: Colors.white),
//          ),
//          onPressed: () {
//            Navigator.push(
//                context, MaterialPageRoute(builder: (context) => Loginpage()));
//          },
//          color: Colors.blue,
//        ),
//        margin: new EdgeInsets.only(top: 20.0),
//      )
    ]);

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
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  sendToServer() {
    if (key.currentState.validate()) {
      // No any error in validation
      key.currentState.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LayoutPage()));
      print("Email $Email");
    } else {
      // validation error
      setState(() {
        validate = true;
      });
    }
  }
}
