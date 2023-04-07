import 'package:flutter/material.dart';
import 'package:learningwidget4/my_profile_screen.dart';
import 'package:learningwidget4/splash_screen.dart';
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
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(


          title: Text("hello"),
        ),
        body: Column(
          children: [
            Text("DashBoard Screen", style: TextStyle(
              fontSize: 25,
            ),),

            SizedBox(height: 11,),

            TextField(
              controller: nameController,
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context, 
              MaterialPageRoute(builder: (context) => ProfileScreen(nameController.text.toString()),));
            }, child: Text('My Profile'))
          ],
        )
    );
  }
}
// so we basically installed a package called intl and pug get it
// after that we import this pacakage where we want it
// after importing we use the dateFormat function to format the current date