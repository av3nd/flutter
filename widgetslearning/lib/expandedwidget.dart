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



      // in this tutorial we are going to allocate the remaning space
      // by using expanded widget we will solve the problem of widget space allocation
      // with expanded widget we can control size of any container even if it is of row or column
      // WRAP WITH  EXPANDED widget.. expanded is a widget
      //  we have flex attribute for expanded
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                // width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex:4,
              child: Container(
                // width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex:2,
              child: Container(
                // width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // width: 100,
                height: 100,
                color: Colors.amber,
              ),
            ),
          ],
        ),
    );
  }
}
