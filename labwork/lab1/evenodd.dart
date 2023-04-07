// dart program to find even or odd number
import 'dart:io';

void main() {
  print("enter a number");
  double num = double.parse(stdin.readLineSync()!);

  if (evenodd(num)) {
    print("even number");
  } else {
    print("odd number");
  }
}

bool evenodd(double num) {
  return (num % 2 == 0);
}
