import 'package:flutter/material.dart';

// playing with body and material app section of code

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
      debugShowCheckedModeBanner: false,
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

    var arrName = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Isabel", "Jack"];

    return Scaffold(
      appBar: AppBar(

        title: Text('Flutter Container'),
      ),


    // card widget expects a child so it is better to wrap something whith card
    // card comes with property elevation check it out
    // shadowColor
      body: Center(
        child: Card(
            shadowColor: Colors.red,
            elevation: 20,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('HEllO WORLD',style: TextStyle(fontSize: 21),),
        )),
      )



    );
  }
}
