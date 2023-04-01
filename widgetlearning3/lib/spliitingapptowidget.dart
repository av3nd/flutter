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

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(


          title: Text(widget.title),
        ),
        body:Container(
          child: Column(
            children: [
              CatItems(),
              Contact(),
              SubCatItems(),
              BottomMenu(),



            ],
          ),
        )//This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// so this is how yo split your application to widgets
// and make each widget a function to make the code cleaner
class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 2,
      child: Container(
        height: 100,
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ),itemCount: 10,scrollDirection: Axis.horizontal,),
      ),
    );
  }
}
class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar( backgroundColor: Colors.white,),
          title: Text('Name'),
          subtitle: Text('Mob No'),
          trailing: Icon(Icons.delete),
        ),),
      ),
    );
  }
}
class SubCatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(11),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
          itemCount: 10, scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
class BottomMenu extends StatelessWidget{


  @override
  Widget build(BuildContext context){
  //   var arrColors = [Colors.red,
  //     Colors.orange,
  //     Colors.grey,
  //     Colors.blue,
  //     Colors.pink,
  //     Colors.green,
  //     Colors.purpleAccent,
  //     Colors.brown,];
    return Expanded(
      flex: 2,
      child:  Container(
        color: Colors.blueGrey,
        child:
        Container(
          height: 200,
          child: GridView.count(crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: [
            Container(width:100,color:Colors.blue),


          ],),
        ),

      ),
    );
  }
}

