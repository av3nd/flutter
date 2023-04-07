void main() {
  // Arithmetic arithmetic = Arithmetic(20, 5);
  // arithmetic.num1 = 40;
  // arithmetic.num2 = 30;

  // arithmetic = Arithmetic.withoutFirst(2);
  // arithmetic = Arithmetic.withoutSecond(3);

  // print(arithmetic.sum());

  // print(arithmetic.multiply());

  // print(arithmetic.division());

  Arithmetic arithmetic = Arithmetic(num1: 4, num2: 5);
  arithmetic.sum();
  arithmetic.multiply();
}

class Arithmetic {
  int? num1;
  int? num2;
  int? num3;

  Arithmetic.withoutFirst(this.num2) : num1 = 0;
  Arithmetic.withoutSecond(this.num1) : num2 = 0;

  Arithmetic({required this.num1, required this.num2, this.num3});

  int multiply() => num1! * num2! * (num3 ?? 1);

  int sum() => num1! + num2! + (num3 ?? 0);

  int division() => num1! ~/ num2!;
}
