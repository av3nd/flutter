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

          title: Text('theme and style '),
        ),


        // till now we have to repeatedly include style in the text widget
        // this makes the code redundant that is why
        // we will use the theme and style to reduce redundancy

        body:Column(
          children: [
            Text("Hello World", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, fontStyle: FontWeight.bold),),
            Text("Hello World", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, fontStyle: FontWeight.bold),),

            Text("Hello World", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),
            Text("Hello World", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),

          ],
        ),
             // Text("Hello World", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),

    );
  }
}
