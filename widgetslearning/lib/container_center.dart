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


      // press alt + enter over container to see some usefull shortcuts
      body: Center(

        // align container in center and also its child in center

        child: Container(
          //we are createing a container
          //container is invisible by default
          //make it visible

          // container has alot of functions check it out by pressing ctrl + space
          width: 250,
          height: 250,
          color: Colors.indigo,
          child: Center(child: Text("hello developers",style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.deepPurple),)),

          // so basically we use center attribute to put any text or container on center
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
