import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Form(
          // key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Email is required";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Password is required";
                  }
                },
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Text("Sing-In"),
                      onPressed: () {
                        auth
                            .signInWithEmailAndPassword(
                                email: "packapichart@gmail.com", password: "123456789")
                            .then((FirebaseUser user) {
                              if (user.isEmailVerified) {
                                print("go to home screen");
                              }else{
                                print("Please check your email to verified account");
                              }
                            });
                      },
                    ),
                  ),
                ],
              ),
              FlatButton(
                child: Text("Sing Up"),
                onPressed: () {
                  Navigator.pushNamed(context, "/singup");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
