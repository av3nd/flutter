import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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


  Positioned widget 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(


          title: Text(widget.title),
        ),
        body: Container(
          width: 300,
          height: 200,
          color: Colors.blueGrey,
          child: Stack(
                  children: [

                    Positioned(
                      bottom:1,
                      right: 1,
                      // left: 41,
                      // top: 41,
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )






      // )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}