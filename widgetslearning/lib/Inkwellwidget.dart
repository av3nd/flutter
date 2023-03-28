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


        // Basically if we want to include ontap function just like button in any where we desire we using inkwell
        // ontap is for buttons only
        // but with inkwell we can use ontap feature anywhere
        // just press alt + enter where you want to wrap with inkwell it is a widget
        body:Center(
          child: InkWell(
            onTap: (){
              print("onTap pressed");
            },
            onDoubleTap: (){
              print("onDoubleTap pressed");

            },
            onLongPress: (){
              print("onLongPress pressed");

            },

            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Center(
                  child: InkWell(
                    onTap: (){
                      print("Text widget click here tapped");
                    },
                    child: Text("Click Here",
                      style: TextStyle(fontSize: 31, fontWeight: FontWeight.w700),
                    ),
                  )),
            ),
          ),
        )
      );
  }
}
// in this code we learned to make the yellow container tapable and also the text inside it tapable