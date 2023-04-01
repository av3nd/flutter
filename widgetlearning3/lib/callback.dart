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
// making callback function
callBack(){
  print('Clicked!!!');
}

  @override
  Widget build(BuildContext context) {
    // var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ElevatedButton(
          child: Text('Click Me'),
          onPressed: callBack,
        ) //This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
// so we basically installed a package called intl and pug get it
// after that we import this pacakage where we want it
// after importing we use the dateFormat function to format the current date