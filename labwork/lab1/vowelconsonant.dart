// dart program to find vowel or consonant

import 'dart:io';

void main() {
  print("enter a alphabet character");
  String character = stdin.readLineSync()!;

  if (VowelConsonant(character)) {
    print("It is a vowel");
  } else {
    print("it is a consonant");
  }
}

bool VowelConsonant(String character) {
  String letters = 'aeiouAEIOU';
  return letters.contains(character);
}
