import 'package:c30aflutterpractice/personclass.dart';

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  @override
  String toString() {
    return "Name:$name,Age:$age,Salary:$salary";
  }
}

void main() {
  Employee employee = Employee("Avend", 21, 1000);
  print(employee);
  employee.displayName();
}
