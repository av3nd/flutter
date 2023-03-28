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

    // wrap with Padding
    //   pading has attribute paddind: EdgeInsets ,, check it out for yourselves
    //
        body:Container(
          color: Colors.blueGrey,
          margin: EdgeInsets.all(14),
        // margin cannot be used as a widget
        // Margin(child: Text("Margin",style: TextStyle(fontSize: 25),)),
            child: Padding(
              padding: EdgeInsets.all(top: 21, left:34, bottom:11, right:34),
              child: Text("Margin",style: TextStyle(fontSize: 25, color: Colors.white),),
            )),



      // but we can use it as an attribute inside another container or widget


    // Padding(
          // padding at specific direction,
          // padding: EdgeInsets.only(top: 61, left: 34),
          // padding: EdgeInsets.only(right: 45,bottom: 45),

          //padding in all direction
          // but cannot give padding separately
          // padding: EdgeInsets.all(11),
        // child: Text("Padding",style: TextStyle(fontSize: 25),),
        // ),
    );
  }
}
