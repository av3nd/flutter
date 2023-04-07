// Print name of a list one by one
void main() {
  var names = ["Alice", "Bob", "Charlie", "Avend", "Ashutosh", "Aladeen"];

  printNames(names);
}

void printNames(var names) {
  names.forEach((name) => print(name));
}
