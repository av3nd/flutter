import 'dart:io';
import 'dart:math';

void main() {
  print("object");
  print("\n ------------------------------------------------- \n");
  print("Enter radius to find the are of circle: ");
  double radius = double.parse(stdin.readLineSync()!);

  if (radius == 0) {
    print("write a valid radius");
  } else {
    double result = calculateCircleArea(radius);
    double roundedresult = calculateCircleArea(radius, true);
    print("\n");
    print("Area of circle is: $result");
    print("\n");
    print("Rounded number of the area of circle is: $roundedresult");
  }
}

double calculateCircleArea(double radius, [bool rounded = false]) {
  double area = pi * pow(radius, 2);
  if (rounded) {
    area = area.roundToDouble();
  }
  return area;
}
