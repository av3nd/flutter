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
        body: ListView.separated(itemBuilder: (context,index){
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrName[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrName[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrName[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              ),
            ],
          );
        },
          itemCount: arrName.length,
            separatorBuilder: (context,index){
          return Divider(height: 100, thickness: 6,);
         },
          scrollDirection: Axis.vertical,

        )
          // scrollDirection: Axis.horizontal,
          // reverse: true,

          // children: [

            // BASICALLY array will be used to store data



            // these are static data used with ListView
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("One",style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Two",style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Three",style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Four",style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Five",style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Six",style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
            // ),
          // ],


    );
  }
}
