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

    return Scaffold(
        appBar: AppBar(

          title: Text('Flutter Container'),
        ),



      // this can be done with the help of box decoration
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.shade50,
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                // borderRadius: BorderRadius.circular(21),
                border: Border.all(
                  width: 5,
                  color: Colors.green
                ),
                boxShadow:[
                  BoxShadow(
                  blurRadius: 51,
                  spreadRadius: 6,
                  color: Colors.grey
                )
                ],
                shape: BoxShape.rectangle
              ),
            ),
          ),
        )
    );
  }
}
