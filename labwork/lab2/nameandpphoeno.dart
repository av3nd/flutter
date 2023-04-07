void main() {
  Map<String, String> contact = {};

  setName(contact, 'John Smith');
  setPhone(contact, '555-1234');

  print('Contact:');
  contact.forEach((key, value) {
    print('$key: $value');
  });

  print('\nKeys with length 4:');
  keysWithLength4(contact).forEach((key) {
    print(key);
  });
}

void setName(Map<String, String> contact, String name) {
  contact['name'] = name;
}

void setPhone(Map<String, String> contact, String phone) {
  contact['phone'] = phone;
}

Iterable<String> keysWithLength4(Map<String, String> contact) {
  return contact.keys.where((key) => key.length == 4);
}
