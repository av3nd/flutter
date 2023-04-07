abstract class User {
  void login();
  void logout();
}

abstract class Student {
  void exam();
  void result();
}

abstract class Teacher {
  void calculateSalary();
  void classes();
}

// extends is for single inheritance
// implement is for multiple inheritance

class Avend implements Teacher, Student {
  @override
  void calculateSalary() {}

  @override
  void classes() {}

  @override
  void exam() {}

  @override
  void result() {}
}

void main() {}
