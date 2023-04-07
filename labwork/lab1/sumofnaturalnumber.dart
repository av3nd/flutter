// Dart program to find the sum of n natural numbers
void main() {
  printSumOfN(10);
  printSumOfN(5);
}

void printSumOfN(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print('The sum of the first $n natural numbers is $sum');
}
