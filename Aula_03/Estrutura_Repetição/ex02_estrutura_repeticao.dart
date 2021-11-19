void main() {
  int y = 7;
  int x = 15;
  if (x < y) {
    print('X deve ser maior que o y');
  }
  if (x > y) {
    do {
      int result = x * y;
      print('$x * $y = $result');
      y = y - 1;
    } while (y > 0);
  }
}
