import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  // String fname = "Avend";
  // String lname = "Tabdar";
  // String pet = "cat";
  // print(" \n My name is $fname $lname and my pet is $pet");

  // type interference
  // value assigned decides what datatype will be in the variable
  // datatype cannot be chnaged after assigning
  var fname = "Arvin";
  var a = 4;
  fname = "Ashutosh";

  dynamic lname = "Chaudhary";
  lname = "khan";
  lname = 4;

  print("var = $fname $a \n dynamic = $lname");

  // adding four numbers with a function
  // these types of function are useful for nosql database as the structure is not fixed
  int first = 3;
  int second = 4;

  // add
  print(add(first, second, 1, 2));
  print(add(first, second, 1));
  print(add(first, second));

// multiply
  print(multiply(first, second, 1, 2));
  print(multiply(first, second, 1));
  print(multiply(first, second));

// substract
  sub(first: 1, second: 6);

  print("Enter radius: ");
  double radius = double.parse(stdin.readLineSync()!);
  print("radius is $radius");
}

// optional parameter is given by square brackets []
int add(int first, int second, [int third = 0, int fourth = 0]) {
  return first + second + third + fourth;
}

int multiply(int first, int second, [int third = 1, int fourth = 1]) {
  return first + second + third + fourth;
}

//named parameter
int sub({int first = 0, int second = 0}) {
  return first - second;
}
