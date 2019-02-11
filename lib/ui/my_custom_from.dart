import 'package:flutter/material.dart';

class MyCustomFrom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomFrom> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Form"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Image.asset("resources/cat.jpg", height: 100,),

              // Text("pack"),
//               // <--email-->

              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "Email",
                  hintText: "Please input Email",
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => print(value),
              ),

              // TextFormField(
              //   decoration: InputDecoration(
              //     icon: Icon(Icons.people),
              //     labelText: "Email",
              //     hintText: "Please input Email",
              //   ),
              //   obscureText: true,
              //   keyboardType: TextInputType.emailAddress,
              //   onSaved: (value) => print(value),
              // ),

              // <--id-->
              // TextFormField(
              //   validator: (value) {
              //     if (value.isEmpty) {
              //       return 'Plese enter some text';
              //     }
              //     if(value == "admin"){
              //       return 'ok id';
              //     }
              //   },
              // ),
              // TextFormField(
              //   validator: (value) {
              //     if(value == "admin"){
              //       return 'ok pass';
              //     }
              //   },
              // ),
              RaisedButton(
                //check input filed
                onPressed: () {
                  _formKey.currentState.validate();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
