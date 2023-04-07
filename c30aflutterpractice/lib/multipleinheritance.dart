abstract class View {
  void view();
}

abstract class Edit {
  void edit();
}

abstract class Delete {
  void delete();
}

class Admin implements View, Edit, Delete {
  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void edit() {
    // TODO: implement edit
  }

  @override
  void view() {
    // TODO: implement view
  }
}

class User implements View, Edit {
  @override
  void edit() {
    // TODO: implement edit
  }

  @override
  void view() {
    // TODO: implement view
  }
}

class Recepetion extends View {
  @override
  void view() {
    // TODO: implement view
  }
}

void main() {
  var admin = Admin();
  var user = User();
  var reception = Recepetion();

  admin.delete();
  admin.edit();
  admin.view();

  user.view();
  user.edit();

  reception.view();
}
