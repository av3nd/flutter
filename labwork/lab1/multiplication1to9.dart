// multiplication table of 5
void main() {
  int n = 0;
  for (int i = 1; i <= 9; i++) {
    n += 1;
    mul(n);
    print("-----------------------------------------------------------");
  }
}

void mul(int n) {
  for (int i = 1; i <= 12; i++) {
    int result = n * i;
    print('$n x $i = $result');
  }
}
