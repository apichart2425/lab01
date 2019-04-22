import 'package:flutter/material.dart';
// import './ui/first_screen.dart';
// import './ui/second_screen.dart';
// import './ui/my_custom_from.dart';
// import 'ui/img_picker.dart';
// import './ui/listdata.dart';
// import './ui/todo_screem.dart';
// import './ui/login_screen.dart';
// import './ui/register_srceen.dart';
// import './ui/book_screen.dart';
import './ui/mapscreen.dart';
import './ui/testmap.dart';
import './bloc/count_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './bloc/count_event.dart';

void main() => runApp(MyApp());
//BLOC

// class MyApp extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() => MyAppState();
// }

// class MyAppState extends State<MyApp>{

//   final CounterBloc _counterBloc = CounterBloc();

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: 'Flutter DEmo',
//       home:  BlocProvider<CounterBloc>(
//         bloc: _counterBloc,
//         child: CounterPage(),
//       ),
//     );
//   }

//   @override
//   void dispose(){
//     _counterBloc.dispose();
//     super.dispose();
//   }
// }

// class CounterPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     final CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);

//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(title:  Text('Counter'),),
//       body:  BlocBuilder<CounterEvent, int>(
//         bloc: _counterBloc,
//         builder:  (BuildContext context, int count){
//           return Center(
//             child: Text(
//             '$count',
//             style: TextStyle(fontSize: 24.0),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 5.0),
//             child: FloatingActionButton(
//               child: Icon(Icons.add),
//               onPressed: (){
//                 _counterBloc.dispatch(CounterEvent.increment);
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

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
        // "/singup": (context) => RegisterScreen(),        
        // "/": (context) => TodoScreen(),
        // "/": (context) => MapAPIscreen(),
        "/": (context) => MapAPIscreen()
        },
    );
  }
}
