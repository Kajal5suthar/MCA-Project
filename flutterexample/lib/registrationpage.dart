import 'package:flutter/material.dart';
import 'package:flutterexample/homedrawer.dart';
//import 'package:flutterexample/alertDialogbox.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  GlobalKey<FormState> key = new GlobalKey();
  bool passwordVisible = true;
  bool validate = false;
  String password, Email, name, confirmpassword;
  TextEditingController password1 = new TextEditingController();
  TextEditingController conf_password = new TextEditingController();

  @override
  void initState() {
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Registration page"),
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
        keyboardType: TextInputType.text,
        decoration: new InputDecoration(
          hintText: 'full name',
          errorText: validate ? 'Value Can\'t Be Empty' : null,
        ),
      ),
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
        controller: password1,
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
        onSaved: (val) => password = val,
      ),
      new TextFormField(
        keyboardType: TextInputType.text,
        controller: conf_password,
        obscureText: passwordVisible,

        // Use email input type for emails.
        decoration: new InputDecoration(
          labelText: 'Confirm Password',
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

        validator: (val) {
          /*if(val.length<6){

          }
          */
          if (val != password1.text) {
            return 'password is not matching';
          }
        },
      ),
      new SizedBox(height: 15.0),
      new RaisedButton(
        child: new Text('submit'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AlertDialogBox()));
        },
      ),
    ]);
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
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
      print("Email $Email");
    } else {
      // validation error
      setState(() {
        validate = true;
      });
    }
  }
}

class AlertDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return object of type AlertDialog
    return AlertDialog(
      title: new Text("AlertDialog "),
      content: new Text("do you want to login"),
      actions: <Widget>[
        // usually buttons at the bottom of the dialog
        new FlatButton(
          child: new Text("yes"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WelcomePage()));
          },
        ),
        new FlatButton(
          child: new Text("Close"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text("welcom"),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'welcom to flutter',
            ),
          ],
        ),
      ),
    );
    ;
  }
}
