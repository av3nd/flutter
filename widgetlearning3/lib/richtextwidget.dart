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
        body: RichText(text:TextSpan(
          style: TextStyle(
            color: Colors.grey,
            fontSize: 21,
          ),
          children: <TextSpan> [
            TextSpan(text: 'Hello',),
            TextSpan(text: 'World !', style: TextStyle(
              fontSize: 34,
              color: Colors.blue,
              fontWeight: FontWeight.bold
            )),
            TextSpan(
              text: 'Welcome to',
            ),
            TextSpan(
              text: 'Flutter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 43,
                color: Colors.deepOrangeAccent,
                fontStyle: FontStyle.italic,
                // fontFamily:'Schyler'
              )
            )
          ],
        ))



        // Row(
        //   children: [
        //     Text('Hello', style: TextStyle(fontSize: 16,color: Colors.orange),),
        //     Text('World!', style: TextStyle(
        //         fontSize:34,
        //         color: Colors.blueGrey,
        //         fontWeight: FontWeight.bold),),
        //
        //   ],
        // )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}