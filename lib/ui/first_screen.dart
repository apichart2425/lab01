import 'package:flutter/material.dart';
import './detailscreen.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

//DATE
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FristScreenState();
  }
}

class FristScreenState extends State {
  List<String> _passsengers = <String>["", "1", "2", "3", "4", "5"];

  String _passenger = "1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frist Screen"),
      ),
      body: Column(
        children: <Widget>[
          InputDecorator(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: "TEXT"),
            isEmpty: _passenger == "",
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _passenger,
                isDense: true,
                onChanged: (value) {
                  setState(() {
                    _passenger = value;
                  });
                },
                items: _passsengers.map(
                  (String value) {
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          DateTimePickerFormField(
                  inputType: InputType.date,
                  format: DateFormat("yyyy-MM--dd"),
                  decoration: InputDecoration(labelText: "date"),
                ),
        ],
      ),
    );
  }
}

// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Frist Screen"),
//       ),
//       body: Center(
//           // child: Text("go Second"),
//           child: FlatButton(
//         child: Text("go Second"),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => DetailScreen(title: "Hello"),
//             ),
//           );
//         },
//       )),
//     );
//   }
// }
