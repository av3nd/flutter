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



  // controling column and row with singleChildScrollView

      // for scrolling horizontally use scrollDirection: Axis.horizontal,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.lightGreen,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.indigo,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.amber,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.deepOrangeAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.deepPurple,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.amberAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.deepOrange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.indigo,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
