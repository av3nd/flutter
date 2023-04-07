import 'dart:io';

void main() {
  print("enter temperature in fahrenheit:");
  double temp = double.parse(stdin.readLineSync()!);

  if (temp == 0) {
    print("enter a valid temperature");
  } else {
    double result = FahrenheitToCelsius(temp, true);
    print("Converted temperature in celcius is: $result");
  }
}

double FahrenheitToCelsius(double temp, [bool rounded = false]) {
  double celsius = (temp - 32) * (5 / 9);
  if (rounded) {
    celsius = celsius.roundToDouble();
  }
  return celsius;
}
