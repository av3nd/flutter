import 'dart:io';

void main(){
  // print function
  print('Welcome to Dart!');

  // creating a variable storing a name in it and priniting it out
  stdout.write('Enter your Name to continuing seeing the output: ');
  var name = stdin.readLineSync();
  print("Welcome, $name");

  // calling a class in the main function
  Human();

  //Declaring a variable
  int a;
  a = 5; // int a = 5; in one line
  print(a);

  int? b; // ? means can be null, b will not be printed if ? is not given
  print(b);


  // long integer value is stored in BigInt
  BigInt longValue;
  longValue = BigInt.parse('12345678909876543');
  print(longValue);

  // Inline declaration
  String Name = "Raman";

  // double declaration, this is to store fractional numbers
  double db = 96.99;
  print(db);

  // to store both int and double in a single variable we use
  num percentage = 87.65;
  num totalMarks = 580;
  print("both fraction and int : $percentage, $totalMarks");


  // boolean value
  bool isLogin = false;
  bool isLogout = true;
  print("$isLogin, $isLogout");

  //var can be used both explicitly and dyanmically. Expamles given below are same
  var section;
  section = "d"; //string
  section = 7; //int
  section = false; //bool

  dynamic section1;
  section1 = "a"; //string
  section1 = 7; //int
  section1 = false; //bool

  // if var and value are assigned in a single line then the variable made will act like as if it was explicitly declared
  var section2 = "hello";
  //section2 = 1; // int value now cannot be assigned to section2 because a string value was already assigned above
}

  // create a class
class Human {
  Human(){
    print("I am Human");
  }
}