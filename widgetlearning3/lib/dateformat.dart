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
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(


        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Current Time : ${DateFormat('Hms').format(time)}",style: TextStyle(fontSize:15),),
              Text("Current Time : ${DateFormat('MMMMEEEEd').format(time)}",style: TextStyle(fontSize:15),),
              Text("Current Time : ${DateFormat('EEEE').format(time)}",style: TextStyle(fontSize:15),),
              Text("Current Time : ${DateFormat('jms').format(time)}",style: TextStyle(fontSize:15),),
            // more date fomats can be explored by ctrl + enter on the dateformat function

              ElevatedButton(onPressed: (){
                setState(() {

                });
              }, child: Text("Current Time"))
            ],
          ),
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
// so we basically installed a package called intl and pug get it
// after that we import this pacakage where we want it
// after importing we use the dateFormat function to format the current date