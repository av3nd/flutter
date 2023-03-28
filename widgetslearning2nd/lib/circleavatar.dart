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

    return Scaffold(
        appBar: AppBar(

          title: Text('Flutter Container'),
        ),



        // with ListView we can make our ui dynamic
        // scroll direction is inbuilt in ListView
        // List view can be aligned both horizontal and vertical but only at once
        // scrollDirection

        // this is the dynamic listview.builder in this listview we can dynamically fetch data from the array to the list by index
        // to make dynamic list list view is used
        // body: ListView.builder(itemBuilder: (context,index){
        //   return Text(arrName[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),);
        // },
        // itemCount: arrName.length,
        //   itemExtent: 100,
        //   scrollDirection: Axis.vertical,
        //
        // )



        // list view separator
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            child: CircleAvatar(
               child: Text('Avend',style: TextStyle(color:Colors.black, fontSize: 21),),
              // backgroundImage: AssetImage('assets/images/jlo.png'),
              backgroundColor: Colors.blue,
              maxRadius: 200,
            ),
          ),
        ),


    );
  }
}
