void main() {
  Map nepaliLanguage = Map<String, dynamic>();
  {
    nepaliLanguage['hello'] = 'namaste';
    nepaliLanguage['eat'] = 'khau';
    nepaliLanguage['go'] = 'jau';
    nepaliLanguage['sleep'] = 'suta';

    String searchValue = "namaste";
    print("${searchValue} is in ${nepaliLanguage[searchValue]}");

    // print(nepaliLanguage);
    // // keys only
    // print(nepaliLanguage.keys);
    // // value only
    // print(nepaliLanguage.values);
  }
}
