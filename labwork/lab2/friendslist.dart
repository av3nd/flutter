// create a friends list add print friends whoes name starts with a

void main() {
  List<String> friendNames = [
    "John",
    "Mary",
    "Alice",
    "Bob",
    "Adam",
    "Sarah",
    "Amanda"
  ];
  printName(friendNames);
}

void printName(List<String> friends) {
  List<String> aNames = friends.where((name) => name.startsWith("A")).toList();
  print("Friend names that start with the letter A: $aNames");
}
