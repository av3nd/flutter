void main() {
  int? first = 2;
  int? second;

  print(add(first, second ?? 0));  
  //second ?? 0   
  //// means if second is null then put the value of second is 0
}

int add(int first, int second) {
  return first + second;
}
