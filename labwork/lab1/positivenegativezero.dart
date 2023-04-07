// dart program to find whether a number is positive, negative or zero
import 'dart:io';

void main() {
  print("enter a number");
  int num = int.parse(stdin.readLineSync()!);

  posNegZero(num);
}

void posNegZero(int num) {
  if (num < 1 && num != 0) {
    print("number is negative");
  } else if (num > 1) {
    print("number is positive");
  } else if (num == 0) {
    print("number is zero");
  } else {
    print("Only enter integer number");
  }
}
