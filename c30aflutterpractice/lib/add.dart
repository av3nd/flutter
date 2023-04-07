import 'dart:io';

void main() {
  print("enter your first number");
  double a = double.parse(stdin.readLineSync()!);
  print("enter your first number");
  double b = double.parse(stdin.readLineSync()!);


  add(a, b)
  print();
}

double add(double a, double b) {
  double c = a + b;
  return c;
}
