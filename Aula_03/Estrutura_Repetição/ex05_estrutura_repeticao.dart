void main() {
  int seq = 1;
  int mult = 1;
  int contador = 0;
  do {
    print(seq + mult);
    seq = seq + mult;
    mult = mult + 2;
    contador++;
  } while (contador < 20);
}
