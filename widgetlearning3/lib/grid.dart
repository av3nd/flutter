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
    // var time = DateTime.now();
    var arrColors = [Colors.red,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.purpleAccent,
      Colors.brown,];

    return Scaffold(
        appBar: AppBar(


          title: Text(widget.title),
        ),

        // Grid is used to solve the use of row and column
      // GridView.count() vs GridView.extent()
      //  GridView.builder() to build dynamic grid
        // GridView --> crossAxisCount
        // cross axis count defines how many container will exists in a row
        // crossAaxisSpacing
        // mainAxisSpacing

      //GridView.builder can perform both cont and extent task with the hellp of
      // with gridDelegate() ctrl+space to learn more
        body:Column(
          children: [
            // GridView.count
            // Container(
            //   height: 200,
            //   child: GridView.count(crossAxisCount: 4,
            //   crossAxisSpacing: 15,
            //   mainAxisSpacing: 15,
            //   children: [
            //     Container(color:arrColors[0],),
            //     Container(color:arrColors[1],),
            //     Container(color:arrColors[2],),
            //     Container(color:arrColors[3],),
            //     Container(color:arrColors[4],),
            //     Container(color:arrColors[5],),
            //     Container(color:arrColors[6],),
            //     Container(color:arrColors[7],)
            //   ],),
            // ),
            // Container(height: 11,),
            // GridView.extent
            // Container(
            //   height: 200,
            //   child: GridView.extent(maxCrossAxisExtent: 100,
            //   crossAxisSpacing: 11,
            //   mainAxisSpacing: 11,
            //   children: [
            //     Container(color:arrColors[0],),
            //     Container(color:arrColors[1],),
            //     Container(color:arrColors[2],),
            //     Container(color:arrColors[3],),
            //     Container(color:arrColors[4],),
            //     Container(color:arrColors[5],),
            //     Container(color:arrColors[6],),
            //     Container(color:arrColors[7],)
            //   ],),
            // ),

            // dynamic grid

              // height: 300,
              GridView.builder(itemBuilder: (context, index){
                return Container(
                    height: 200,
                    child: Container(color: arrColors[index],));
              }, itemCount: arrColors.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisExtent: 5,
              ),),

          ],
        ),


        //This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
