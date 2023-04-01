import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:widgetlearning3/widget/rounded_btn.dart';
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        title: Text(widget.title),
      ),
      body:Wrap(
        children: [
          ConstrainedBox(
            // constratint box is used to give min max width height
            constraints: BoxConstraints(
              // use with shrink
                minHeight: 20,
                minWidth: 200,

                //use with expand
                maxHeight:60,
                maxWidth: 280
            ),
            child: Row(
              children: [
                SizedBox.square(
                  // SizedBox.expand
                  // SizedBox.shrink
                  // SizedBox.square

                  // width: 200,
                  // height: 50,

                  dimension: 100,
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    child: Text('click'),
                  ),

                ),
                SizedBox(width:20,),
                SizedBox.square(
                  // SizedBox.expand
                  // SizedBox.shrink
                  // SizedBox.square

                  // width: 200,
                  // height: 50,

                  dimension: 100,
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    child: Text('click'),
                  ),

                ),
              ],
            ),

          ),
        ],
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}