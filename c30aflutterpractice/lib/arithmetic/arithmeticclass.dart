class Arithmetic {
  double add(double a, double b) {
    return a + b;
  }

  double substract(double a, double b) {
    return a - b;
  }
}

void main(List<String> args) {
  var arth1 = new Arithmetic();
  print("${arth1.add(3, 5)}");

  var arth2 = new Arithmetic();
  print("${arth2.substract(2, 1)}");
}
