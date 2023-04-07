void main() {
  Map<String, dynamic> person = {};
  setName(person, 'John Smith');
  setAddress(person, '123 Main St.');
  setAge(person, 30);
  setCountry(person, 'USA');

  print('Map:');
  person.forEach((key, value) {
    print('$key: $value');
  });
}

void setName(Map<String, dynamic> person, String name) {
  // Map<String, dynamic> person = {};
  person['name'] = name;
}

void setAddress(Map<String, dynamic> person, String address) {
  person['address'] = address;
}

void setAge(Map<String, dynamic> person, int age) {
  person['age'] = age;
}

void setCountry(Map<String, dynamic> person, String country) {
  person['country'] = country;
}

void updateCountry(Map<String, dynamic> person, String newCountry) {
  person['country'] = newCountry;
}
