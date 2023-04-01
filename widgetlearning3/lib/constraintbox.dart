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
        body: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 300,
            minWidth: 200,
            minHeight: 100,
            maxHeight: 300
          ),
          child: ElevatedButton(
            onPressed: (){

            },
            child: Text(
              'Click'
            ),
          )
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

