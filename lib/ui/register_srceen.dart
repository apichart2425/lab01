import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() {
    // TODO: implement createState
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _UserName = TextEditingController();
  final _Password = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController RePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Sing Up")),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: "Email"),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Email is required";
                  }
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty && value.length < 8) {
                    return "Password is required";
                  }
                },
              ),
              TextFormField(
                controller: RePasswordController,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty && value.length < 8) {
                    return "Password is required";
                  }
                },
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      child: Text("Sing-Up"),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, we want to show a Snackbar
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                        //set state to check account on firebase

                        if (_formKey.currentState.validate()) {
                          auth
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              .then((FirebaseUser user) {
                            user.sendEmailVerification().then((user){
                              Navigator.pop(context);
                            }); //send email confirm
                            print("return from firebase ${user.email}");
                          }).catchError((error) {
                            print("$error");
                          });
                        }else{
                          print("error");
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
