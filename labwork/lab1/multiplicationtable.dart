// multiplication table of 5
void main() {
  int n = 5;
  mul(n);
}

void mul(int n) {
  for (int i = 1; i <= 12; i++) {
    int result = n * i;
    print('$n x $i = $result');
  }
}
