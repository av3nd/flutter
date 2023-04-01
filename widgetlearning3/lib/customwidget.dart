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
        body:Center(
          child: Container(
            width: 100,
            child: Column(
              children: [
                RoundedButton(
                  btnName: 'Login',
                  icon: Icon(Icons.lock),
                  callback: (){
                  print("logged in btn clicked");
                  },
                  textStyle: TextStyle(fontSize: 14),
                ),
                RoundedButton(
                  btnName: 'Play',
                  icon: Icon(Icons.play_arrow),
                  callback: (){
                    print("logged in btn clicked");
                  },
                  textStyle: TextStyle(fontSize: 14),
                ),
                Container(
                  height: 40,
                  width: 150,
                  child: RoundedButton(
                    btnName: 'Press',
                    // icon: Icon(Icons.play_arrow),
                    callback: (){
                      print("Playing..");
                    },
                    bgColor: Colors.orange,
                    textStyle: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}