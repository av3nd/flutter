// dart program to print name 100 times

import 'dart:io';

void main() {
  print("Enter your name");
  String name = stdin.readLineSync()!;
  printName(name);
}

void printName(String name) {
  int num = 1;
  for (int i = 0; i < 100; i++) {
    print("$num : $name");
    num++;
  }
}
