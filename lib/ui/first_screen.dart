import 'package:flutter/material.dart';
import './detailscreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Frist Screen"),
      ),
      body: Center(
          // child: Text("go Second"),
          child: FlatButton(
        child: Text("go Second"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(title: "Hello"),
            ),
          );
        },
      )),
    );
  }
}
