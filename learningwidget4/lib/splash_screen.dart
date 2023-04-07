


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learningwidget4/main.dart';
import 'package:learningwidget4/my_profile_screen.dart';

class SplashScreen extends StatefulWidget{


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage() //important step to navigate window
          ));
    });
  }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text('Splash Screen', style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700,color: Colors.white),),),),
    );
  }
}