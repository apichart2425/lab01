import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  DetailScreen({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("${title} DetailScreen"),
      ),
      body: Center(
          // child: Text("go Second"),
          child: FlatButton(
            child: Text("go Second"),
            onPressed: () {
              Navigator.pushNamed(context, "/second");
            },
          )),
    );
  }
}
