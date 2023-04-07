class Faculty {
  String fullname;
  int age;
  String address;

  Faculty(this.fullname, this.age, this.address, int salary);

  void displaydetails() {
    print("Fullname: $fullname, Age: $age, address: $age");
  }
}
