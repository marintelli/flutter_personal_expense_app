import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           Container(
             width: double.infinity,
             child: Card(
               color: Colors.blue,
               child: Text("Card1"),
               elevation: 5,
             ),
           ),
           Card(
             color: Colors.red,
             child: Text("List of TX"),
          ),
        ],
      
     // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}

