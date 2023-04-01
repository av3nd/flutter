import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(


          title: Text(widget.title),
        ),
        body: Container(
          width:300,
          height: 300,
          child: Stack(
            children: [
              Container(
                width:200,
                height: 200,
                color: Colors.blueGrey,
              ),
              Positioned(
                left: 21,
                top: 21,
                // bottom: 21,
                // right: 21,
                child: Container(
                  width:200,
                  height:200,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}