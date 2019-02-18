import 'package:flutter/material.dart';
// import './detailscreen.dart';
//Image Pick
// import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart' as img_picker;
import 'dart:io';

class ImagePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Picker();
  }
}

class Picker extends State {
  List<String> _passsengers = <String>["", "1", "2", "3", "4", "5"];

  String _passenger = "1";
  File _img;

  Future getImage() async{
    var image = await img_picker.ImagePicker.pickImage(source: img_picker.ImageSource.camera);
  
    // var video = await ImagePicker.
    setState(() {
          _img = image;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: (){
          getImage();
        },
      ),

      appBar: AppBar(
        title: Text("Frist Screen"),
      ),
      body: Column(
        children: <Widget>[
          _img == null
          ? Text("NO Image")
          : Image.file(_img),
          // InputDecorator(
          //   decoration: InputDecoration(
          //     icon: Icon(Icons.person),
          //     labelText: "TEXT"),
          //   isEmpty: _passenger == "",
          //   child: DropdownButtonHideUnderline(
          //     child: DropdownButton<String>(
          //       value: _passenger,
          //       isDense: true,
          //       onChanged: (value) {
          //         setState(() {
          //           _passenger = value;
          //         });
          //       },
          //       items: _passsengers.map(
          //         (String value) {
          //           return DropdownMenuItem<String>(
          //             child: Text(value),
          //             value: value,
          //           );
          //         },
          //       ).toList(),
          //     ),
          //   ),
          // ),
          // DateTimePickerFormField(
          //         inputType: InputType.date,
          //         format: DateFormat("yyyy-MM--dd"),
          //         decoration: InputDecoration(labelText: "date"),
          //       ),
        ],
      ),
    );
  }
}
