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

        // types of button: 1. OutlinedButton 2.TextButton 3.ElevatedButton

        // TextButton function and short press vs long press
        // ElevatedButton
        body: OutlinedButton(
          child: Text('Click Here!!'),
          onPressed: (){
            print('onPressed Tapped!');
          },
          onLongPress: (){
            print('onLongPress Tapped!');
          },

        // ElevatedButton(
        //   child: Text('Click Here!!'),
        //   onPressed: (){
        //     print('onPressed Tapped!');
        //   },
        //   onLongPress: (){
        //     print('onLongPress Tapped!');
        //   },

      //   TextButton(
      // child: Text('Click Here!!'),
      // onPressed: (){
      //   print('onPressed Tapped!');
      // },
      // onLongPress: (){
      //   print('onLongPress Tapped!');
      // },
    )
    );
  }
}
