// dart program to take expenses as input from the user and print the total expense
import 'dart:io';

void main() {
  List<double> expenses = takeInput();
  double total = printTotal(expenses);
  print('total expenses is ${total}');
}

List<double> takeInput() {
  List<double> expenses = [];
  while (true) {
    stdout.write('Enter expense amount "q" to end the list): ');
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'q') {
      break;
    }
    try {
      double amount = double.parse(input);
      expenses.add(amount);
    } catch (e) {
      print('Invalid input, please enter a number or "q".');
    }
  }
  return expenses;
}

double printTotal(List<double> expenses) {
  double total = 0;
  for (double expense in expenses) {
    total += expense;
  }
  return total;
}
