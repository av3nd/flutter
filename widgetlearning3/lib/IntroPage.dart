
import 'package:flutter/material.dart';
import 'package:widgetlearning3/MainPage.dart';


class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcome',style: TextStyle(fontSize: 34,
          fontWeight: FontWeight.bold,
          ),),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'hvgc',),
            ));
         
          }, child: Text('Next'))
        ],
      ),
    );
  }
}