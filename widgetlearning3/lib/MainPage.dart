import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:widgetlearning3/IntroPage.dart';
// package imported
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: IntroPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(


          title: Text("Mainpage"),
        ),
        body: Text('Main Page')// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

