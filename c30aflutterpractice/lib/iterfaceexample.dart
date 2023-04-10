abstract class ITeacher {
  void login();
  void signUp();
  void enterMarks();
  void deleteStudent(String stdId);
  void takeStudentAttendance();

  void displayMessage() {
    print("Hello From parent");
  }
}

abstract class IAdmin {
  void CheckTeacherAttendance();
}

//single inheritance
class HOD extends IAdmin {
  @override
  void CheckTeacherAttendance() {}
}

// multiple inheritance
class Teacher implements ITeacher, IAdmin {
  @override
  void CheckTeacherAttendance() {
    // TODO: implement CheckTeacherAttendance
  }

  @override
  void deleteStudent(String stdId) {
    // TODO: implement deleteStudent
  }

  @override
  void displayMessage() {
    // TODO: implement displayMessage
  }

  @override
  void enterMarks() {
    // TODO: implement enterMarks
  }

  @override
  void login() {
    // TODO: implement login
  }

  @override
  void signUp() {
    // TODO: implement signUp
  }

  @override
  void takeStudentAttendance() {
    // TODO: implement takeStudentAttendance
  }
}
