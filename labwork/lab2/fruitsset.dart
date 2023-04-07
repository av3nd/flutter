// create a set of fruits and print all fruit one by one using a loop

void main() {
  Set<String> fruits = {"apple", "banana", "orange", "mango"};

  printNames(fruits);
}

void printNames(var fruits) {
  fruits.forEach((fruit) => print(fruit));
}
