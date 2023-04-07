import 'dart:io';

void main() {
  print("  Enter principal rate and time");
  double p = double.parse(stdin.readLineSync()!);
  double t = double.parse(stdin.readLineSync()!);
  double r = double.parse(stdin.readLineSync()!);

  double result = PrintSi(p, t, r);
  print("Simple interest is : $result");
}

double PrintSi(double p, double t, double r) => (p * t * r) / 100;
