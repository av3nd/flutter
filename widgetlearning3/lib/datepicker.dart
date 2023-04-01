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
    return Scaffold(
        appBar: AppBar(


          title: Text(widget.title),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Select Date and Time', style: TextStyle(fontSize: 25),),
              ElevatedButton(onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2021),
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2023));
              
                if(datePicked!=null){
                  print('Date selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                }
              }, child: Text('Select Date')),
              ElevatedButton(onPressed: () async {
                TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial);

                if(pickedTime!=null){
                  print('Time selected: ${pickedTime.hour}: ${pickedTime.minute}');
                }
              }, child: Text('Selec Time'))
            ],
          ),
        ) //This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
// so we basically installed a package called intl and pug get it
// after that we import this pacakage where we want it
// after importing we use the dateFormat function to format the current date