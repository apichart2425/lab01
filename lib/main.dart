import 'package:flutter/material.dart';
// import './ui/first_screen.dart';
// import './ui/second_screen.dart';
// import './ui/my_custom_from.dart';
// import 'ui/img_picker.dart';
// import './ui/listdata.dart';
// import './ui/todo_screem.dart';
import './ui/login_screen.dart';
import './ui/register_srceen.dart';
import './ui/book_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // debugShowCheckedModeBanner: false, //show bar debug
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes:{
        // "/main": (context) => MyCustomFrom(),
        // "/first" :(context) => FirstScreen(),
        // "/SecondScreen":(context) => SecondScreen(),
        // "/img": (context) => ImagePicker(),
        // "/listdata": (context) => ListData(),
        // "/z": (context) => TodoScreen(),
        // "/": (context) => LoginScreen(),
        "/singup": (context) => RegisterScreen(),        
        // "/": (context) => TodoScreen(),
        "/": (context) => BookScreen(),
        
        },
    );
  }
}

//<-----STATELESS------>
// STATELESS this not lender on time, but is lender only one time to run page

// class MyHomePage extends StatelessWidget {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("PACKINZG3"),
//       ),
//       body: Text("${counter}"),
//       floatingActionButton: IconButton(
//         icon: Icon(Icons.add),
//         onPressed: () {
//           counter++;
//           print("Counter value $counter");
//         },
//       ),
//     );
//   }
// }

//<-----STATEFUL------>
// STATEFUL lender page on time

class Counterscroe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState(); //call the child function
  }
}

class MyHomePageState extends State<Counterscroe> {
  //state<..>  call the function parent
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PACKINZG3"),
      ),
      body: Row(
        //row is column || column is row --?> HTML
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("${counter}"),
          Text("row1"),
          Text("row2"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //setstate to change value counter
          setState(() {
            counter++;
          });
          print("Counter value $counter");
          return counter;
        },
      ),
    );
  }
}

// TabBar
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tap"),
          bottom: TabBar(
            tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car), text: "car",),
            Tab(icon: Icon(Icons.account_balance), text: "HOME",),
            Tab(icon: Icon(Icons.score), text: "score",),    
          ],),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.directions_car),
            Icon(Icons.account_balance),
            Icon(Icons.score),            
          ],
        ),
      )
    );
  }
}