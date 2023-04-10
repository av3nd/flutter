abstract class IUser {
  void login();
  void logout();
}

abstract class IStudent {
  void exam();
  void result();
}

abstract class ITeacher {
  void calculateSalary();
  void classes();
}

// I stands for interface that is just for interface

// extends is for single inheritance
// implement is for multiple inheritance

class Avend implements ITeacher, IStudent {
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
