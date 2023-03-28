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

    var arrName = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Isabel", "Jack"];
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(

          title: Text('Flutter Container'),
        ),


        // current time and date on the screen
        // refreshes every second
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text('Current Time: $time',style: TextStyle(fontSize: 25),),
                // Text('Current Time: ${time.year}',style: TextStyle(fontSize: 25),),
                // Text('Current Time: ${time.month}',style: TextStyle(fontSize: 25),),
                // Text('Current Time: ${time.weekday}',style: TextStyle(fontSize: 25),),
                // Text('Current Time: ${time.day}',style: TextStyle(fontSize: 25),),
                // Text('Current Time: ${time.hour}',style: TextStyle(fontSize: 25),),
                Text('Current Time: ${time.hour}:${time.minute}:${time.second}',style: TextStyle(fontSize: 25),),

                ElevatedButton(onPressed: (){
                  // setState is a build function
                  // it basically refreshes the ui
                  setState(() {

                  });
                }, child: Text('Current Time')),
              ],
            ),
          ),
        )



    );
  }
}
