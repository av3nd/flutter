void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 78, 96];


  // print all numbers on by one
  // for (int i = 0; i < list.length; i++) {
  //   print("${list[i]}");
  // }


// print only even numbers

  for (var value in list) {
    if(value % 2 ==0)
    print(value);
  }
}
