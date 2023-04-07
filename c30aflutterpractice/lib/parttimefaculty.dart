import 'package:c30aflutterpractice/faculty.dart';

class PartTimeFaculty extends Faculty {
  double hourlySalary;

  PartTimeFaculty(String fullname, int age, String address, this.hourlySalary)
      : super(fullname, age, address);

  @override
  void calculateYeralySalary() {
    print("Yearly Salary : ${hourlySalary * 12 * 20}");
  }
}
