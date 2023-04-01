import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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


// stateful is fo changes in runtime without refreshing the ui
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage>{
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            Text('Count: $count', style: TextStyle(fontSize: 21)),
            ElevatedButton(onPressed: (){
              count++;
              print(count);

              // setState basically refreshes the ui or a single widget
              setState(() {
                count++;
                print(count);
              });
              
            }, child: Text('Increment Count'))

          ],
        ),
      ),
    );
  }

}