import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

// flutter app created extended with statelesswidget
// missing override was added
// return material app
class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DashBoardScreen(),
    );
  }

}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
    ),
      body: Container(
        color: Colors.blue.shade50,
      ),
    );
  }

}