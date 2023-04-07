

import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(


          title: Text("Range"),
        ),
        body: Center(
          child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 20,
            activeColor: Colors.green,
            inactiveColor: Colors.green.shade100,
            min: 0,
            max: 100,
            onChanged: (newValue){
              values = newValue;
              print('${newValue.start},${newValue.end}');
              setState(() {

              });
            },
          ),
        )
    );
  }
}
