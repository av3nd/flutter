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
        body:Container(
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            // direction: Axis.horizontal,
            direction: Axis.vertical,

            // alignment: WrapAlignment.spaceEvenly,
            // alignment: WrapAlignment.spaceAround,
            alignment: WrapAlignment.spaceBetween,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 70,
                height: 70,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.red,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.green,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.blueGrey,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.orange,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.black,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.amber,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.purpleAccent,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.indigo,
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}