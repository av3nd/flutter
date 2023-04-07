// dart program to make an empty list and add all 7 days to that list and finally print it
import 'dart:io';

void main(List<String> args) {
  List<String> daysOfWeek = [];
  addDay(daysOfWeek);
  print("All seven days of a week $daysOfWeek");
}

void addDay(List<String> days) {
  for (int i = 0; i < 7; i++) {
    print("Enter all 7 days of a week");
    String day = stdin.readLineSync()!;
    days.add(day);
  }
}
