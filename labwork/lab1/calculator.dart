// dart program to write a program that has features like addition, division, multiplication and substraction

import 'dart:io';

void sub() {
  print("enter two numbers to substract");
  int num = int.parse(stdin.readLineSync()!);
  int num1 = int.parse(stdin.readLineSync()!);

  int subs = num - num1;
  print("Substraction of $num and $num1 is : $subs");
}

void add() {
  print("enter two numbers to add");
  int num = int.parse(stdin.readLineSync()!);
  int num1 = int.parse(stdin.readLineSync()!);

  int adds = num + num1;
  print("Addition of $num and $num1 is : $adds");
}

void div() {
  print("enter two numbers to divide");
  int num = int.parse(stdin.readLineSync()!);
  int num1 = int.parse(stdin.readLineSync()!);

  int divs = num ~/ num1;
  print("Division of $num and $num1 is : $divs");
}

void mul() {
  print("enter two numbers to multiply");
  int num = int.parse(stdin.readLineSync()!);
  int num1 = int.parse(stdin.readLineSync()!);

  int muls = num * num1;
  print("Multiple of $num and $num1 is : $muls");
}

void main() {
  print("Welcome to dart CLI calculator");
  print(
      "Enter '1' for addition \n Enter '2' for substracton \n Enter '3' for multiplication \n Enter '4' for division");
  int gfg = int.parse(stdin.readLineSync()!);

  switch (gfg) {
    case 1:
      {
        add();
      }
      break;
    case 2:
      {
        sub();
      }
      break;
    case 3:
      {
        mul();
      }
      break;
    case 4:
      {
        div();
      }
      break;
    default:
      {
        print(
            "Please enter number 1-4 only to use the features of the calculator");
      }
      break;
  }
}
