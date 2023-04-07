import 'dart:io';

void main() {
  print("Simple Interest Program ");
  print("-----------------------------------------------------");
  print("enter princpal amount:");
  double p = double.parse(stdin.readLineSync()!);

  print("enter time:");
  double t = double.parse(stdin.readLineSync()!);

  print("enter rate:");
  double r = double.parse(stdin.readLineSync()!);

  if (p == 0 || t == 0 || r == 0) {
    print("Please dont left the input blank or 0");
  } else {
    double si = simpleinterest(principal: p, time: t, rate: r);
    print("Your Simple Interest is: $si");
  }
}

double simpleinterest(
    {double principal = 0, double time = 0, double rate = 0}) {
  double result = principal * time * rate;
  return result;
}
