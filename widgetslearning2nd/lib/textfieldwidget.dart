import 'package:flutter/material.dart';

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

    var arrName = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Isabel", "Jack"];
    var emailText = TextEditingController();
    var passText = TextEditingController();

    return Scaffold(
        appBar: AppBar(

          title: Text('Flutter Container'),
        ),


        // textfield have alot of attributes so its neccessary to you to have a thorugh look on it
        //  after creating a textfiled the data written on it can be saved by
        // textfiled data is saved by creating a variable of the textfiled and linking it in the textfile through attribute called controller
        // after saving the textfiled data on those var we can now build the logic in the button
        body: Center(
          child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // textfiled
                  TextField(
                    keyboardType: TextInputType,
                    controller: emailText,
                    decoration: InputDecoration(
                      hintText: 'Enter phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                          width: 11,
                        )
                      ),
                      prefixIcon: Icon(Icons.phone,color: Colors.orange,),
                    ),
                  ),
                  Container(height: 10,),
                  TextField(
                    obscureText: true,
                    controller: passText,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      // decoration has alot of attributes
                      // some attirbutes
                      // enabled: false,
                      // focusedBorder: ,
                      //   enabledBorder: ,
                      //   disabledBorder:,
                      border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                                color: Colors.deepOrange,
                                width: 11,

                            )
                        ),
                      // suffixText :"Username exits",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye, color: Colors.orange,),
                        onPressed: (){

                        },
                      ),
                      prefixIcon: Icon(Icons.email,color: Colors.orange,),
                    ),
                  ),
                  // button
                  ElevatedButton(onPressed: (){
                    // store textfiled data on these string variables
                    String uEmail = emailText.text.toString();
                    String uPass = passText.text.toString();
                    
                    print("Email: $uEmail,Pass : $uPass");
                  }, child: Text(
                    'Login'
                  ))
                ],
              )),
        )



    );
  }
}
