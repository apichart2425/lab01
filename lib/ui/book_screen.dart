import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookScreenState();
  }
}

class BookScreenState extends State<BookScreen> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController _title = TextEditingController();
  TextEditingController _author = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _title,
                decoration: InputDecoration(
                  labelText: "title",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Plase fill title";
                  }
                },
              ),
              TextFormField(
                controller: _author,
                decoration: InputDecoration(
                  labelText: "Author",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Plase fill title";
                  }
                },
              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  if (_formkey.currentState.validate()) {
                    //save to cloud fire store
                    // Firestore.instance.collection('books').add(
                    //     {"title": _title.text, "author": _author}).then((doc) {
                    //   //logic check add firestore too complate
                    //   print(doc.toString());
                    Firestore.instance
                        .collection('books')
                        .document('X1')
                        .setData({
                      "title": _title.text,
                      "author": _author.text
                    }).then((x) {
                      //   //logic check add firestore too complate
                        print("set success");
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

//https://stackoverflow.com/questions/54485453/flutter-problem-cloud-firestore-dependency
