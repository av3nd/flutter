import 'package:flutter/material.dart';
import 'package:widgetslearning2nd/ui_helper/util.dart';

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
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 21,fontWeight: FontWeight.bold, color: Colors.pink),

          subtitle1:TextStyle(fontSize: 11,fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          subtitle2:TextStyle(fontSize: 11,fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, color: Colors.green),

        )

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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('theme and style '),
      ),


      // till now we have to repeatedly include style in the text widget
      // this makes the code redundant that is why
      // we will use the theme and style to reduce redundancy

      // we can manually set theme by putting it on theme ThemeData on the myApp()
      // same for the text textTheme TextTheme inside themeData myApp

      // after setting font theme on the myapp now we can put it on the body by using Theme.of(context).textTheme.headline1
      body:Column(
        children: [
          // though setting properties on the myApp
          // if you sill want to change some of the style
          // you can do it by ! = if null
          // headline!.copyWith(Color: Colors.orange)

          Text("Hello World", style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.orange),),
          Text("Hello World", style: Theme.of(context).textTheme.headline2,),


          Text("Hello World", style: Theme.of(context).textTheme.subtitle2,),
          Text("Hello World", style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.red)),

          // Or you want to write your font and text style in another file just like a css file
          //    then go ahead make a package and make a dart file inside in which has the properties for the style
          // now just use the function you provided on that file inside the pacakage
          Text("Hello World", style: mTextStyle11(),),

        ],
      ),
      // Text("Hello World", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),),

    );
  }
}
