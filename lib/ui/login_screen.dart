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
  final _formKey = GlobalKey<FormState>();

  FirebaseAuth auth = FirebaseAuth.instance;

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18),
        key: _formKey,
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: email,
                decoration: InputDecoration(labelText: "Email"),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Email is required";
                  }
                },
              ),
              TextFormField(
                controller: password,
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
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, we want to show a Snackbar
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                        
                        if (_formKey.currentState.validate()) {
                          auth
                            .signInWithEmailAndPassword(
                                email: email.text, password: password.text)
                            .then((FirebaseUser user) {
                              if (user.isEmailVerified) {
                                print("go to home screen");
                              }else{
                                print("Please check your email to verified account");
                              }
                            });
                        }else{
                          print("error");
                        }
                        
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
