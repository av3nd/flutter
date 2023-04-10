class Arithmetic {
  //private static variable
  static final Arithmetic _instance = Arithmetic._internal();

  //private constructor
  Arithmetic._internal();

  //factory method which return olny one instance
  factory Arithmetic() {
    return _instance;
  }

  int? _a;
  int? _b;

  set a(int value) {
    _a = value;
  }

  set b(int value) {
    _b = value;
  }

  int get a => _a!;
  int get b => _b!;

  int add() {
    return _a! + _b!;
  }

  int sub() {
    return _a! - _b!;
  }
}

void main(List<String> args) {
  Arithmetic arithmetic = Arithmetic();

  Arithmetic arithmetic1 = Arithmetic();

  print(arithmetic == arithmetic1);

  arithmetic.a = 10;
  arithmetic.b = 20;

  arithmetic1.a = 10;
  arithmetic1.b = 20;

  print(arithmetic.add());
  print(arithmetic.sub());
}
