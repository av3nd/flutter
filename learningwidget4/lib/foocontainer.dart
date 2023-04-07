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

  var _width = 200.0;
  var _height = 100.0;

  bool flag = true;

  Color bgColor = Colors.blueGrey;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(


          title: Text("Foo Container(AnimatedContainer)"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: _width,
                height: _height,

                // curve is to control the speed of the animation of the cruves in container
                // curve: Curves.bounceIn,
                // curve: Curves.fastOutSlowIn,
                // curve: Curves.easeInOutCubic,
                // curve: Curves.slowMiddle,
                // curve: Curves.linear,
                curve: Curves.easeInOutSine,

                // color: bgColor,
                decoration: myDecor,
                duration: Duration(seconds: 2),
              ),

              ElevatedButton(onPressed: (){
                setState(() {
                  if(flag) {
                    _width = 100.0;
                    _height = 200.0;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                      color: Colors.orange,
                    );
                    flag = false;
                  }else{
                    _width = 200.0;
                    _height = 100.0;
                    // bgColor = Colors.blueGrey;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                      color: Colors.blueGrey,
                    );
                    flag = true;
                  }
                });

              }, child: Text('Animate'))
            ],
          ),
        )
    );
  }
}


// so basically we create animation with the help of AnimatedContainer and with the help of
//  with the help of button or inkwell onpress function will have the basic animation attributes a widget
// height width decoration and color can be changed with animation